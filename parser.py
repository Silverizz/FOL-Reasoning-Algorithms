import re
from define import *

def extract_formula(file_path):
    formula = []
    with open(file_path, errors="ignore") as f:
        content = f.read()

    matches = re.findall(r"fof\([^,]+,\s*[^,]+,\s*(.*)\)\.", content)

    for m in matches:
        formula.append(m.strip())
    
    return formula


def parse_quantifiers(formula):
    parsed = []

    for f in formula:
        f = f.strip()
        if f.startswith("(") and f.endswith(")"):
            f = f[1:-1].strip()
            
        match = re.match(r"([!?])\s*\[([^\]]+)\]\s*:\s*(.*)", f)

        if match:
            symbol = match.group(1)
            vars_ = match.group(2).split(",")
            body = match.group(3).strip()

            parsed.append({
                "quantifier": "forall" if symbol == "!" else "exists",
                "variables": [v.strip() for v in vars_],
                "body": body
            })
        else:
            parsed.append({
                "quantifier": None,
                "variables": [],
                "body": f
            })

    return parsed


def parse_body(s):
    s = s.strip()

    # implication
    if "=>" in s:
        left, right = s.split("=>", 1)
        return Implies(parse_body(left), parse_body(right))

    # conjunction
    if "&" in s:
        left, right = s.split("&", 1)
        return And(parse_body(left), parse_body(right))

    # disjunction
    if "|" in s:
        left, right = s.split("|", 1)
        return Or(parse_body(left), parse_body(right))

    # negation
    if s.startswith("~"):
        return Not(parse_body(s[1:]))

    # predicate
    match = re.match(r"(\w+)\((.*)\)", s)

    if match:
        name = match.group(1)
        args = [a.strip() for a in match.group(2).split(",")]
        return Predicate(name, args)

    return s


def build(parsed_formula):
    asts = []

    for item in parsed_formula:
        body_ast = parse_body(item["body"])

        if item["quantifier"] == "forall":
            asts.append(ForAll(item["variables"], body_ast))

        elif item["quantifier"] == "exists":
            asts.append(Exists(item["variables"], body_ast))

        else:
            asts.append(body_ast)

    return asts

