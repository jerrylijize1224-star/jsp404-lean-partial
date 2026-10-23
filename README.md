# JSP-000404: verified partial Lean development

Snapshot date: 2026-10-23. **This is not a complete solution or an award claim.**

This project formalizes parts of JSP-000404 / Erdős 504, Blumenthal's
maximum-angle problem, in Lean 4 with mathlib. The arbitrary-cardinality
classification remains the unproved proposition `Prize.JSP404.SendovClaim`.

## Download the current snapshot

[Download the triangle-constraint snapshot](jsp404-triangle-obstruction-20261023.zip) · [SHA-256](jsp404-triangle-obstruction-20261023.zip.sha256).

`7d22a9d7a72f0687ba04f92efe05c8a60f06eac4dfbfe317023160f5f552586d  jsp404-triangle-obstruction-20261023.zip`

The previous [exact 17–20-point snapshot](jsp404-seventeen-twenty-exact-20261022.zip) remains available.

## New result: triangle constraints and a fixed-candidate exclusion

`TriangleDirection.lean` proves that directions of three actual complex-plane
edges satisfy one of two consistent orientation branches. It derives a nonzero
determinant from three angles strictly below pi, so no general-position
hypothesis is added. Independent period shifts and representatives in [0,18)
are included.

`Fixed144TriangleObstruction.lean` then excludes rows 7, 9, 10 (zero-based) of
the exploratory 21-row model with diameter 43/6. The three edge directions
must respectively lie in `[47/3,497/30]`, `[83/5,499/30]`, and `[64/5,77/6]`.
These intervals contradict both triangle orientation branches. All periodic
cases and rational inequalities are kernel-checked; the solver's UNSAT output
is not imported. `no_complex_triangle` states the resulting geometric exclusion
with its six explicit arc-membership conditions.

These two modules add 19 audited theorems. This is a proof of a necessary
geometric constraint and the exclusion of **one fixed candidate**, not a proof
of 144 degrees for 21 points. The verified interval for every N=21 through 30
remains **[140,144] degrees**.

A separate variable-row search for nine single arcs and twelve triple arcs,
including all 1330 triangle constraints, returned unknown (60-second timeout).
It is neither a proof nor a counterexample, and other partitions were not tested.
See `research/jsp404-144-next-step.md` for exact data and coverage.
No mathematical novelty or priority claim is made.

## Retained result: exact 140 degrees for 17 through 20 points

The new proof establishes, for the original ordinary planar definitions,

`alpha 17 = alpha 18 = alpha 19 = alpha 20 = 7*pi/9 = 140 degrees`.

`guaranteedAngle_seven_pi_ninths` gives the lower bound for every `N >= 17`.
`seventeen_twenty_isSharpBound` proves full sharpness for `17 <= N <= 20`,
including counterexamples at every strictly larger angle. No convexity,
general-position, or direction-model realizability hypothesis is added.

The preceding verified interval for alpha 17 was `[4320/31, 140]` degrees.
This proof closes the entire remaining `20/31`-degree gap. The value is
Sendov's classical mathematical result, not a claimed new numerical discovery.
The full JSP-000404 classification remains incomplete.

## Proof route for the retained 140-degree result

1. A continuous single-arc family below 140 degrees has capacity eight,
   by a strict circular separation and anchored half-open-bin argument.
2. Every finite direction set with the required circular diameter is covered
   by a single arc or three explicitly defined arcs. Periodic lifts, empty
   sets, and all interval boundary cases are included in the proof.
3. The previous continuous three-arc exclusion theorem gives capacity eight
   for the second family. It uses rank compression of 27 coordinates and the
   previously kernel-checked 62-sector nonarc certificate.
4. The two capacities give sixteen for antipodally consistent direction
   assignments. Complex arguments and mathlib angle identities transfer this
   result to arbitrary finite planar point sets. A uniform strict angle cap
   is derived from the finite set of triangle angles.
5. The existing first-band planar construction supplies the matching upper
   bound and sharpness for seventeen through twenty points.

Main modules and declarations (namespace `Prize.JSP404`):

| Module | Main declarations |
| --- | --- |
| `ContinuousOneArc.lean` | `ContinuousOneArc.Model.card_le_eight` |
| `ContinuousDirectionClassification.lean` | `ContinuousDirection.classification` |
| `ContinuousDirectionCapacity.lean` | `ContinuousDirection.card_le_sixteen_of_assignment` |
| `SeventeenTwentyExact.lean` | `guaranteedAngle_seven_pi_ninths`, `seventeen_twenty_isSharpBound`, `alpha_seventeen`, `alpha_eighteen`, `alpha_nineteen`, `alpha_twenty` |

The preceding snapshot added 26 audited theorems in these four modules. The final module's
import closure contains 94 local modules and mathlib, without the external
nine- or eleven-point certificates. See
`research/jsp404-seventeen-twenty-exact.md` for the argument and scope.

## Retained results and remaining work

Earlier results cover exact ordinary values for 3 through 16, all powers of
two with exponent at least two, and every one below a power of two with
exponent at least three. Together with this snapshot, the consecutive exact
range is now **3 through 20**. Both bands' general upper bounds and weaker
general lower bounds remain included.

The next incomplete ordinary cardinalities are 21 through 30; their classical
target is 144 degrees. The arbitrary-cardinality sharp lower bounds and the
full `SendovClaim` remain unproved. A successful build of this snapshot must
not be interpreted as a solution of all of JSP-000404.

## Verification and reproduction

Full project build passed: **3256 jobs**, including dependencies.
Axiom audit: **2357 declarations passed**, including all 19 new theorems.
Four entries are axiom-free; all remaining entries use only subsets of
`propext`, `Classical.choice`, and `Quot.sound`. Original `Basic.lean`,
`Target.lean`, the toolchain and all dependency pins match the preceding sealed
17-20-point exact snapshot byte for byte.

Pinned Lean: `leanprover/lean4:v4.34.0`.
Pinned mathlib: `5ed2965256430c3649e86755f9576b54eca72435`.
Transitive revisions are recorded in `lake-manifest.json`.

Install [elan](https://lean-lang.org/install/) and run in the extracted project:

```sh
python3 scripts/prepare_nine_certificate.py
python3 scripts/prepare_eleven_certificate.py
lake exe cache get
python3 scripts/build_nine_certificate.py
python3 scripts/build_eleven_certificate.py
python3 scripts/build_sector44_certificate.py
python3 scripts/build_sector62_certificate.py
lake build
lake env lean Prize/Audit.lean
```

Local verification uses `./scripts/lake.sh build` and
`./scripts/lake.sh env lean Prize/Audit.lean`. The included logs are
`verification/build.log` and `verification/axioms.log`; external certificate
build logs are retained in their verification subdirectories.
The project uses no `sorry`, `admit`, added axioms, or `native_decide`.
`MANIFEST.sha256` records snapshot contents. This is a local checked build,
not an independent external review or a claimed fresh-machine rebuild.

## Attribution and search limits

- Bl. Sendov, *Minimax of the angles in a plane configuration of points*,
  Acta Mathematica Hungarica 69 (1995), 27–46:
  [DOI](https://doi.org/10.1007/BF01874605),
  [public volume](https://real-j.mtak.hu/7467/).
- Bl. Sendov, *Compulsory configurations of points in the plane*,
  Fundamentalnaya i Prikladnaya Matematika 1:2 (1995), 491–516:
  [Math-Net](https://www.mathnet.ru/eng/fpm81).
- The retained nine-point result reuses zilan520's
  [PR #100](https://github.com/TheJustinSunPrize/awards/pull/100), pinned at
  `d869ab901722fab0b2d980b38b7bd958cf52c128` (59 unchanged source modules).
- The retained eleven-point result reuses hit1190100321's
  [PR #647](https://github.com/TheJustinSunPrize/awards/pull/647), pinned at
  `2d0c118ba083a5a75609e8dd586e7a478b4a6dab` (368 unchanged source modules).
  These closures were rebuilt with `--trust=0`; their locks remain included.
  They are not dependencies of the new 17–20 proof.

This is a formalization contribution in the project owner's Codex-assisted
session, not a claim of sole manual authorship, mathematical novelty,
priority, first formalization, or prize eligibility. No fresh literature,
award-status, or competing-submission search was performed for this snapshot.
Historical source-access and search coverage are recorded in `research/`.
Third-party source snapshots and toolchains are fetched via pinned dependencies
and are not bundled. The root also retains an unchanged JSP-000628 auxiliary
module; no complete result for that problem is claimed.

## Publication

This snapshot is prepared for the project owner's repository, not as a complete
prize submission. Sealed archives retain the publication notes written before
their upload; later fixed commits are recorded separately in
`research/jsp404-publication.md` and repository history.
