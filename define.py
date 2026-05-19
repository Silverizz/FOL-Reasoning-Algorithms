class Predicate:
    def __init__(self, name, args):
        self.name = name
        self.args = args

    def __repr__(self):
        return f"{self.name}({', '.join(self.args)})"


class Implies:
    def __init__(self, left, right):
        self.left = left
        self.right = right

    def __repr__(self):
        return f"({self.left} => {self.right})"


class And:
    def __init__(self, left, right):
        self.left = left
        self.right = right

    def __repr__(self):
        return f"({self.left} & {self.right})"


class Or:
    def __init__(self, left, right):
        self.left = left
        self.right = right

    def __repr__(self):
        return f"({self.left} | {self.right})"


class Not:
    def __init__(self, formula):
        self.formula = formula

    def __repr__(self):
        return f"~{self.formula}"


class ForAll:
    def __init__(self, variables, body):
        self.variables = variables
        self.body = body

    def __repr__(self):
        return f"ForAll({self.variables}, {self.body})"


class Exists:
    def __init__(self, variables, body):
        self.variables = variables
        self.body = body

    def __repr__(self):
        return f"Exists({self.variables}, {self.body})"