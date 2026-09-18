# JSP-000404: verified partial Lean development

Published by GitHub account `jerrylijize1224-star`, from an AI-assisted development in the project owner's Codex session.

Snapshot date: 2026-09-18. **This is not a complete solution or an award claim.**

This project studies JSP-000404 / Erdős 504, Blumenthal's maximum-angle
problem, in Lean 4 with mathlib. The intended full classification remains the
unproved proposition `Prize.JSP404.SendovClaim` in `Prize/JSP404/Target.lean`.
It is not presented as a theorem.

## Download the reproducible snapshot

[Download source, pinned dependencies, notes, and verification logs](jsp404-partial-20260918.zip). Extract the ZIP and run the reproduction commands below inside its top-level directory.

[Archive SHA-256](jsp404-partial-20260918.zip.sha256): `d620eb4b1a9e6044c7971ae2dad3362bbe0abc1e52f74f7331e31ede2b5bb4e0`.
The archive includes a per-file manifest. Its contents are the original local snapshot, including the publication-status note written before uploading. File paths below refer to the extracted snapshot.

## Verified scope

- Actual Euclidean-plane definitions, monotonicity, general-position reduction,
  sharpness interfaces, and the exact values `alpha 3 = pi / 3` and
  `alpha 4 = pi / 2`.
- Binary-cover counting and conditional geometric direction-cover bounds.
- Two-centre capacity, three-centre capacity bounds in both parameter ranges,
  and their connection to actual triangle angles.
- Four-centre capacity bounds, separately for a triangle with an interior
  centre and a convex quadrilateral. Each case has an arithmetic proof and
  an interface deriving its angle data from actual Euclidean geometry.

The four-centre results bound the corresponding sum of four powers of two by
`2^n` when `n <= t < n + 1/2`, and by `2^n + 2^(n-2)` when
`n <= t < n + 1`. Here `n >= 2`; each geometric structure records its precise
angle and incidence assumptions. These are intermediate capacity results,
not exact values for configurations consisting of four ordinary points.

Main declarations (namespace `Prize.JSP404`):

| Result | File / declarations |
| --- | --- |
| Exact four-point value | `FourPoints.lean`: `fourPoints_sharp`, `alpha_four` |
| Interior arithmetic | `FourCentreInterior.lean`: `InteriorAngleData.capacity_low`, `.capacity_high` |
| Interior geometry | `FourCentreInteriorGeometry.lean`: `InteriorFourGeometry.capacity_low`, `.capacity_high` |
| Convex arithmetic | `FourCentreConvex.lean`: `ConvexFourAngleData.capacity_low`, `.capacity_high` |
| Convex geometry | `FourCentreConvexGeometry.lean`: `ConvexFourGeometry.capacity_low`, `.capacity_high` |

The independent counting arguments use floor inequalities and triangle-angle
identities, rather than assuming the maximizing exponent profiles in the
published induction. This describes the proof route in this development;
it is not a claim of mathematical novelty or first formalization.

## Remaining gaps

1. A uniform cyclic projective-direction-gap definition and its equivalence
   to the case-specific four-centre capacity formulas.
2. A complete reindexing/classification interface for arbitrary four centres.
3. The connection from generalized point-cluster sizes to their local capacities.
4. A valid general counting argument for five or more centres.
5. Full sharpness constructions and assembly of the arbitrary-cardinality theorem.

Some existing auxiliary theorems have explicit hypotheses that are not yet
established for the general construction; in particular see
`research/jsp404-maximal-centres.md`. No such hypothesis has been added to
`SendovClaim`. Computational experiments are discovery aids, not proofs.

## Reproduction and verification

Pinned Lean: `leanprover/lean4:v4.34.0`.
Pinned mathlib: `5ed2965256430c3649e86755f9576b54eca72435`.
All transitive revisions are recorded in `lake-manifest.json`.

Install [elan](https://lean-lang.org/install/), then run in the extracted
project root, preserving the supplied lock file:

```sh
lake exe cache get
lake build
lake env lean Prize/Audit.lean
```

The source project was checked with `./scripts/lake.sh build`, followed by
`./scripts/lake.sh env lean Prize/Audit.lean`; both exited successfully.
The wrapper only selects the locally installed pinned toolchain.
The included logs are `verification/build.log` and `verification/axioms.log`.
The final build reported 2532 jobs including dependencies; this is not a
count of new theorems. This snapshot has not received an independent external
review or a fresh-machine rebuild.

The audited theorem dependencies are only `propext`, `Classical.choice`, and
`Quot.sound`. The project Lean source contains no `sorry`, `admit`, added
axiom declarations, or `native_decide`. `MANIFEST.sha256` records the exact
snapshot contents, except the manifest itself. The archive hash is stored
beside the archive. A local hash is an integrity record, not an independently
certified publication timestamp.

The original root and audit also include a small JSP-000628 auxiliary module;
it is retained unchanged so this snapshot matches the checked project. No
complete result for that problem is claimed either.

## Literature and overlapping public work

- Bl. Sendov, *Minimax of the angles in a plane configuration of points*,
  Acta Mathematica Hungarica 69 (1995), 27–46,
  [DOI](https://doi.org/10.1007/BF01874605),
  [public library volume](https://real-j.mtak.hu/7467/).
- Bl. Sendov, *Compulsory configurations of points in the plane*,
  Fundamentalnaya i Prikladnaya Matematika 1:2 (1995), 491–516,
  [Math-Net record](https://www.mathnet.ru/eng/fpm81).
- [Official problem record](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0401-0500.md#JSP-000404).
- [PR #42](https://github.com/TheJustinSunPrize/awards/pull/42) reports source
  corrections and partial formalizations.
- [PR #100](https://github.com/TheJustinSunPrize/awards/pull/100) reports exact
  values for N=5–10 and all dyadic thresholds.
- [PR #647](https://github.com/TheJustinSunPrize/awards/pull/647) reports the
  eleven-point bound and exact values for N=11–16, with N=16 attributed to
  prior work.
- [PR #300](https://github.com/TheJustinSunPrize/awards/pull/300) describes
  another overlapping partial development and the general counting gap.

The PR descriptions were inspected, but their complete proof packages were
not independently rebuilt here. This list is not an exhaustive priority
search. Elementary exact cases and several proof ingredients overlap with
existing work. Whether the particular four-centre formalization adds a new
contribution requires further comparison and review.

Historical mathematical conclusions belong to their original authors.
This local formalization and its auxiliary proof development were generated
with Codex assistance in the project owner's session and checked locally.
The code uses mathlib; third-party libraries are fetched through pinned
dependencies and are not bundled. No sole manual authorship, first discovery,
award eligibility, or exclusive right to the problem is asserted.

## Publication status

This repository publishes a standalone partial research snapshot. The GitHub commit records the published version; no proof of earlier priority is asserted. The prize repository's
[current contribution rules](https://github.com/TheJustinSunPrize/awards/blob/main/CONTRIBUTING.md)
accept complete original-problem solutions, not intermediate formalizations.
This snapshot is therefore intended for the project owner's own repository,
not as a completed prize submission.
