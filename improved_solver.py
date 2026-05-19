from define import Implies, Not, And, Or, ForAll, Exists

# =========================
# memorization
# =========================
visited = set()

class Sequent:
    def __init__(self, left, right, used_terms=None):
        self.left = left
        self.right = right
        self.used_terms = used_terms or set()

    def __repr__(self):
        left_side = ", ".join(str(x) for x in self.left)
        right_side = ", ".join(str(x) for x in self.right)
        return f"{left_side} ⊢ {right_side}"



def sequent_key(sequent):
    left = tuple(sorted(str(f) for f in sequent.left))
    right = tuple(sorted(str(f) for f in sequent.right))
    terms = tuple(sorted(sequent.used_terms))
    return (left, right, terms)


def is_closed(sequent):
    for l in sequent.left:
        for r in sequent.right:
            if str(l) == str(r):
                return True
    return False


# =========================
# fresh term generator
# =========================
fresh_counter = 0
def fresh_term():
    global fresh_counter
    fresh_counter += 1
    return f"c{fresh_counter}"



def prove(sequent):
    print("\nSequent:", sequent)

    # =========================
    # prevents unnecessary loops
    # =========================
    key = sequent_key(sequent)
    if key in visited:
        return False
    visited.add(key)

    # 1. closure check
    if is_closed(sequent):
        print("Closed")
        return True


    result = apply_unary_rules(sequent)
    if result:
        return prove(result)

    result = apply_quantifier_rules(sequent)
    if result:
        return prove(result)

    branches = apply_branching_rules(sequent)
    if branches:
        left, right = branches
        return prove(left) and prove(right)

    print("No rule applicable")
    return False


def apply_unary_rules(sequent):

    # →R
    for f in sequent.right:
        if isinstance(f, Implies):
            new_left = sequent.left + [f.left]
            new_right = [x for x in sequent.right if x is not f] + [f.right]
            return Sequent(new_left, new_right, sequent.used_terms.copy())

    # ¬R
    for f in sequent.right:
        if isinstance(f, Not):
            new_left = sequent.left + [f.formula]
            new_right = [x for x in sequent.right if x is not f]
            return Sequent(new_left, new_right, sequent.used_terms.copy())

    # ¬L
    for f in sequent.left:
        if isinstance(f, Not):
            new_left = [x for x in sequent.left if x is not f]
            new_right = sequent.right + [f.formula]
            return Sequent(new_left, new_right, sequent.used_terms.copy())

    return None


def apply_branching_rules(sequent):

    # ∧R
    for f in sequent.right:
        if isinstance(f, And):
            r1 = [x for x in sequent.right if x is not f] + [f.left]
            r2 = [x for x in sequent.right if x is not f] + [f.right]
            return (
                Sequent(sequent.left, r1, sequent.used_terms.copy()),
                Sequent(sequent.left, r2, sequent.used_terms.copy())
            )

    # ∨L
    for f in sequent.left:
        if isinstance(f, Or):
            l1 = [x for x in sequent.left if x is not f] + [f.left]
            l2 = [x for x in sequent.left if x is not f] + [f.right]
            return (
                Sequent(l1, sequent.right, sequent.used_terms.copy()),
                Sequent(l2, sequent.right, sequent.used_terms.copy())
            )

    # →L
    for f in sequent.left:
        if isinstance(f, Implies):
            b1 = Sequent(
                [x for x in sequent.left if x is not f],
                sequent.right + [f.left],
                sequent.used_terms.copy()
            )
            b2 = Sequent(
                [x for x in sequent.left if x is not f] + [f.right],
                sequent.right,
                sequent.used_terms.copy()
            )
            return b1, b2

    return None


def apply_quantifier_rules(sequent):

    # ∀L (reuse terms first, then fresh)
    for f in sequent.left:
        if isinstance(f, ForAll):

            x = f.variables[0]

            # reuse
            for t in sequent.used_terms:
                new_body = substitute(f.body, x, t)
                new_left = [x for x in sequent.left if x is not f] + [new_body]
                return Sequent(new_left, sequent.right, sequent.used_terms.copy())

            # fresh
            t = fresh_term()
            new_terms = sequent.used_terms.copy()
            new_terms.add(t)

            new_body = substitute(f.body, x, t)
            new_left = [x for x in sequent.left if x is not f] + [new_body]

            return Sequent(new_left, sequent.right, new_terms)

    # ∀R (FIXED eigenvariable discipline)
    for f in sequent.right:
        if isinstance(f, ForAll):

            x = f.variables[0]

            t = fresh_term()
            while t in sequent.used_terms:
                t = fresh_term()

            new_terms = sequent.used_terms.copy()
            new_terms.add(t)

            new_body = substitute(f.body, x, t)
            new_right = [x for x in sequent.right if x is not f] + [new_body]

            return Sequent(sequent.left, new_right, new_terms)

    # ∃R (reuse first, then fresh)
    for f in sequent.right:
        if isinstance(f, Exists):

            x = f.variables[0]

            for t in sequent.used_terms:
                new_body = substitute(f.body, x, t)
                new_right = [x for x in sequent.right if x is not f] + [new_body]
                return Sequent(sequent.left, new_right, sequent.used_terms.copy())

            t = fresh_term()
            new_terms = sequent.used_terms.copy()
            new_terms.add(t)

            new_body = substitute(f.body, x, t)
            new_right = [x for x in sequent.right if x is not f] + [new_body]

            return Sequent(sequent.left, new_right, new_terms)

    # ∃L
    for f in sequent.left:
        if isinstance(f, Exists):

            x = f.variables[0]
            t = fresh_term()

            new_terms = sequent.used_terms.copy()
            new_terms.add(t)

            new_body = substitute(f.body, x, t)
            new_left = [x for x in sequent.left if x is not f] + [new_body]

            return Sequent(new_left, sequent.right, new_terms)

    return None


def substitute(expr, var, term):

    if isinstance(expr, str) and expr == var:
        return term

    if hasattr(expr, "args"):
        new_args = [substitute(a, var, term) for a in expr.args]
        return type(expr)(expr.name, new_args)

    if isinstance(expr, Implies):
        return Implies(
            substitute(expr.left, var, term),
            substitute(expr.right, var, term)
        )

    if isinstance(expr, And):
        return And(
            substitute(expr.left, var, term),
            substitute(expr.right, var, term)
        )

    if isinstance(expr, Or):
        return Or(
            substitute(expr.left, var, term),
            substitute(expr.right, var, term)
        )

    if isinstance(expr, Not):
        return Not(substitute(expr.formula, var, term))

    return expr