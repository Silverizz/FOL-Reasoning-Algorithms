from define import Implies, Not, And, Or, ForAll, Exists

class Sequent:
    def __init__(self, left, right, used_terms=None):
        self.left = left
        self.right = right
        self.used_terms = used_terms or set()

    def __repr__(self):
        left_side = ", ".join(str(x) for x in self.left)
        right_side = ", ".join(str(x) for x in self.right)

        return f"{left_side} ⊢ {right_side}"
    

def is_closed(sequent):

    for left_formula in sequent.left:
        for right_formula in sequent.right:

            if str(left_formula) == str(right_formula):
                return True
            if hasattr(left_formula, "name") and left_formula.name == "=":
                if left_formula.args[0] == left_formula.args[1]:
                    return True

    return False

fresh_counter = 0
def fresh_term():
    global fresh_counter
    fresh_counter += 1
    return f"c{fresh_counter}"


def prove(sequent):
    print("\nSequent:", sequent)

    # 1. closing rules
    if is_closed(sequent):
        print("Closed by identity")
        return True

    # 2. unary rules
    result = apply_unary_rules(sequent)
    if result:
        return prove(result)

    # 3. branching rules
    branches = apply_branching_rules(sequent)
    if branches:
        left, right = branches
        return prove(left) and prove(right)

    # 4. quantifier instantiation
    result = apply_quantifier_rules(sequent)
    if result:
        return prove(result)

    print("No rule applicable")
    return False



def apply_unary_rules(sequent):

    # =========================
    # →R (Implication Right)
    # =========================
    for formula in sequent.right:

        if isinstance(formula, Implies):

            new_left = sequent.left + [formula.left]

            new_right = [
                f for f in sequent.right
                if f is not formula
            ] + [formula.right]

            return Sequent(new_left, new_right, sequent.used_terms.copy())

    # =========================
    # ¬R (Not Right)
    # A ⊢ ¬B  becomes  A, B ⊢
    # =========================
    for formula in sequent.right:

        if isinstance(formula, Not):

            new_left = sequent.left + [formula.formula]
            new_right = [f for f in sequent.right if f is not formula]

            return Sequent(new_left, new_right, sequent.used_terms.copy())

    # =========================
    # ¬L (Not Left)
    # ¬A, Γ ⊢ Δ becomes Γ ⊢ Δ, A
    # =========================
    for formula in sequent.left:

        if isinstance(formula, Not):

            new_left = [f for f in sequent.left if f is not formula]
            new_right = sequent.right + [formula.formula]

            return Sequent(new_left, new_right, sequent.used_terms.copy())
    

    # =========================
    # =L (Equality Left)
    # =========================
    for formula in sequent.left:

        if hasattr(formula, "name") and formula.name == "=":

            t1, t2 = formula.args

            new_left = [
                substitute(f, t1, t2)
                for f in sequent.left
                if f is not formula
            ]

            new_right = [
                substitute(f, t1, t2)
                for f in sequent.right
            ]

            return Sequent(new_left, new_right, sequent.used_terms.copy())
        
    # =========================
    # =R (Equality Right)
    # =========================
    for formula in sequent.right:

        if hasattr(formula, "name") and formula.name == "=":

            if formula.args[0] == formula.args[1]:
                return Sequent(sequent.left, [], sequent.used_terms.copy())

    return None

def apply_branching_rules(sequent):

    # =========================
    # ∧R (AND Right)
    # Γ ⊢ A ∧ B, Δ  =>  Γ ⊢ A, Δ   AND   Γ ⊢ B, Δ
    # =========================
    for formula in sequent.right:

        if isinstance(formula, And):

            new_right_1 = [f for f in sequent.right if f is not formula] + [formula.left]
            new_right_2 = [f for f in sequent.right if f is not formula] + [formula.right]

            return (
                Sequent(sequent.left, new_right_1, sequent.used_terms.copy()),
                Sequent(sequent.left, new_right_2, sequent.used_terms.copy())
            )

    # =========================
    # ∨L (OR Left)
    # Γ, A ∨ B ⊢ Δ  =>  Γ, A ⊢ Δ   AND   Γ, B ⊢ Δ
    # =========================
    for formula in sequent.left:

        if isinstance(formula, Or):

            new_left_1 = [f for f in sequent.left if f is not formula] + [formula.left]
            new_left_2 = [f for f in sequent.left if f is not formula] + [formula.right]

            return (
                Sequent(new_left_1, sequent.right, sequent.used_terms.copy()),
                Sequent(new_left_2, sequent.right, sequent.used_terms.copy())
            )

    # =========================
    # →L (Implication Left)
    # Γ, A → B ⊢ Δ  =>  (Γ ⊢ Δ, A) AND (Γ, B ⊢ Δ)
    # =========================
    for formula in sequent.left:

        if isinstance(formula, Implies):

            branch1 = Sequent(
                [f for f in sequent.left if f is not formula],
                sequent.right + [formula.left],
                sequent.used_terms.copy()
            )

            branch2 = Sequent(
                [f for f in sequent.left if f is not formula] + [formula.right],
                sequent.right,
                sequent.used_terms.copy()
            )

            return branch1, branch2

    return None

def ground(expr):
        if isinstance(expr, str):
            return expr
        if hasattr(expr, "args"):
            return type(expr)(expr.name, [ground(a) for a in expr.args])
        return expr


def apply_quantifier_rules(sequent):

    # =========================
    # ∀L (For All Left)
    # Γ, ∀x.A ⊢ Δ  =>  Γ, A[t/x] ⊢ Δ
    # =========================
    for formula in sequent.left:

        if isinstance(formula, ForAll):

            x = formula.variables[0]

            t = fresh_term()
            new_terms = sequent.used_terms.copy()
            new_terms.add(t)

            new_body = substitute(formula.body, x, t)
            new_left = [f for f in sequent.left if f is not formula] + [new_body]

            return Sequent(new_left, sequent.right, new_terms)
        

    # =========================
    # ∀R (For All Right)
    # =========================
    for formula in sequent.right:

        if isinstance(formula, ForAll):

            x = formula.variables[0]

            t = fresh_term()   # constant

            new_body = ground(substitute(formula.body, x, t))

            new_right = [
                f for f in sequent.right if f is not formula
            ] + [new_body]

            return Sequent(sequent.left, new_right, sequent.used_terms.copy())
        

    # =========================
    # ∃R (Exists Right)
    # Γ ⊢ ∃x.A, Δ  =>  Γ ⊢ A[t/x], Δ
    # =========================
    for formula in sequent.right:

        if isinstance(formula, Exists):

            x = formula.variables[0]

            for t in sequent.used_terms:
                new_body = substitute(formula.body, x, t)
                new_right = [f for f in sequent.right if f is not formula] + [new_body]

                return Sequent(sequent.left, new_right, sequent.used_terms.copy())

            t = fresh_term()
            new_terms = sequent.used_terms.copy()
            new_terms.add(t)

            new_body = substitute(formula.body, x, t)
            new_right = [f for f in sequent.right if f is not formula] + [new_body]

            return Sequent(sequent.left, new_right, new_terms)
        
    # ==========================================================
    #  ∃L (Exists Left) 
    # ==========================================================
    for formula in sequent.left:
        if isinstance(formula, Exists):

            x = formula.variables[0]
            t = fresh_term()

            new_terms = sequent.used_terms.copy()
            new_terms.add(t)

            new_body = substitute(formula.body, x, t)
            new_left = [f for f in sequent.left if f is not formula] + [new_body]

            return Sequent(new_left, sequent.right, new_terms)

    return None

def substitute(expr, var, term):

    # leaf variable
    if isinstance(expr, str) and expr == var:
        return term

    # predicate / function
    if hasattr(expr, "args"):
        new_args = [substitute(a, var, term) for a in expr.args]
        return type(expr)(expr.name, new_args)

    # connectives
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