# A finite covering theorem for the 21-point case of Erdős problem 504

Lean verifies that every subset of at least 12 of the 20 direction labels contains one of the 2,214 listed cores. This covers all 125,970 sets of exactly 12 labels. If each of these cores is excluded by the geometry, it follows that at most 11 three-arc vertices can occur. Together with the earlier bound of nine one-arc vertices this would prove the 21-point lower bound of 144 degrees.

The theorem in this archive is `Prize.JSP404.ThreeArcShared12Coverage.all_covered`. Its hypotheses specify only a set of labels and its cardinality. Lean checks the relation between the labels and 2,707 Boolean clauses, then checks the LRAT refutation of those clauses. The separate geometric exclusions are still being verified. At the time of this checkpoint the project's proved numerical interval for 21 points is 140 to 144 degrees. Sendov published the mathematical classification in 1995.

## Reproduce

Install the pinned Lean toolchain using elan, unpack this archive, and run the following commands inside its directory. The manifest pins mathlib and its transitive dependencies. This subproblem has 23 project modules and is independent of the external nine-point and eleven-point certificates used elsewhere in the larger project.

```sh
lake exe cache get Mathlib.Tactic.Sat.FromLRAT Mathlib.Tactic.Linarith Mathlib.Data.Fintype.Fin Mathlib.Data.Finset.Card Mathlib.Data.List.FinRange
lake build
lake env lean Audit.lean
```

The exact clauses and refutation are in `data/case.cnf` and `data/case.lrat`. The 2,214 lists in proof order are in `data/core-lists.json`. The verified module build and axiom dependencies are in `verification/`. Each bundled file has a SHA-256 checksum in `MANIFEST.sha256`. The preceding complete numerical snapshot proves the exact value at 22 points and sharpness through 32 points. [22-point snapshot](https://github.com/jerrylijize1224-star/jsp404-lean-partial/commit/a21a624718db1d8e00f1e91da7d7f0c6733cfc69).

The known angle formula is due to Bl. Sendov, *Minimax of the angles in a plane configuration of points*, Acta Mathematica Hungarica 69 (1995), 27–46, Theorem 4.1. This checkpoint records a finite formal proof and makes no priority claim.
