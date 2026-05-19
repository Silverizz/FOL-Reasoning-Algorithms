import os
import time
from loader import find_fof
from parser import extract_formula, parse_quantifiers, build
from baseline_solver import Sequent as BaselineSequent, prove as baseline_prove
from improved_solver import Sequent as ImprovedSequent, prove as improved_prove

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
PUZ_DIR = os.path.join(BASE_DIR, "PUZ")  # folder with .p files

files = find_fof(PUZ_DIR)
if not files:
    print("No .p files found in", PUZ_DIR)
    exit()

print(f"Found {len(files)} .p files for testing.")

results = []

for file_path in files:
    print("\n=========================")
    print("File:", os.path.basename(file_path))
    print("=========================")

    formulas = extract_formula(file_path)
    parsed = parse_quantifiers(formulas)
    asts = build(parsed)

    print("\nASTs:")
    for i, a in enumerate(asts, 1):
        print(f"{i}: {a}")

    if len(asts) < 1:
        print("No formulas in file, skipping.")
        continue

    goal = asts[-1]
    axioms = asts[:-1]

    # -------------------------
    # BASELINE SOLVER
    # -------------------------
    seq_base = BaselineSequent(axioms, [goal])
    start_time = time.time()
    try:
        result_base = baseline_prove(seq_base)
    except Exception as e:
        print("Baseline solver error:", e)
        result_base = False
    baseline_time = time.time() - start_time

    # -------------------------
    # IMPROVED SOLVER
    # -------------------------
    # Reset global visited set for each formula
    import improved_solver
    improved_solver.visited.clear()
    seq_improved = ImprovedSequent(axioms, [goal])
    start_time = time.time()
    try:
        result_improved = improved_prove(seq_improved)
    except Exception as e:
        print("Improved solver error:", e)
        result_improved = False
    improved_time = time.time() - start_time

    results.append({
        "file": os.path.basename(file_path),
        "baseline_result": result_base,
        "baseline_time": baseline_time,
        "improved_result": result_improved,
        "improved_time": improved_time
    })

print("\n=========================")
print("SUMMARY")
print("=========================")
for r in results:
    print(f"{r['file']}: Baseline={r['baseline_result']} ({r['baseline_time']:.3f}s), "
          f"Improved={r['improved_result']} ({r['improved_time']:.3f}s)")