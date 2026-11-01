# JSP-000404: verified partial Lean development

Snapshot date: 2026-11-01. **This is not a complete solution or an award claim.**

This project formalizes parts of JSP-000404 / Erdős 504, Blumenthal's
maximum-angle problem, in Lean 4 with mathlib. The arbitrary-cardinality
classification remains the unproved proposition `Prize.JSP404.SendovClaim`.

## Download the current snapshot

[Download the exact twenty-eight-point snapshot](jsp404-twentyeight-exact-20261101.zip) · [SHA-256](jsp404-twentyeight-exact-20261101.zip.sha256).

`ea4295fd8d6b084bae4d80c2e9d5fd0e473d36a224542c0c5d7de6f033ffce64  jsp404-twentyeight-exact-20261101.zip`

The previous [exact twenty-nine-point snapshot](jsp404-twentynine-exact-20261031.zip) and [exact 17–20-point snapshot](jsp404-seventeen-twenty-exact-20261022.zip) remain available.

## New result: the exact twenty-eight-point value is 144 degrees

`ThreeArcEighteen.lean` proves a capacity of eighteen for every pairwise
antipodally compatible three-arc family strictly below 144 degrees.
After scaling directions by 5/9, every needed constraint is a strict integer
difference bound. Tie-broken fractional ranks compress 57 endpoints into
57 distinct residues, preserving those bounds with uniform slack. The new
abstract family has diameter 681/95 in the original units; no planar
realizability of this compressed family is needed or asserted.

A common one-sector rotation becomes exactly 57 discrete single-row mask
changes. With nineteen occupied masks among twenty types, each change swaps
one row with the unique empty slot, giving an odd permutation. At the end,
the twenty masks undergo an even rotation. Both the finite rotation sign
and the abstract swap argument are checked by the Lean kernel. This
contradiction excludes nineteen rows, without an assumed general-position
perturbation or an unverified solver certificate.

`TwentyeightExact.lean` combines the capacity eighteen with the existing
single-arc capacity nine: any finite ordinary planar configuration whose
angles are all below 144 degrees has at most 27 points. The existing binary
construction supplies the matching upper bound, proving
**alpha(28)=4*pi/5=144 degrees** and full `IsSharpBound` for 28<=N<=32.
Values 29 through 32 were already exact. No convexity, general-position,
realizability, or extremum-attainment hypothesis is added to the target.

Seven new modules contain sixty-four audited theorems. N=21 through 27
remains in **[140,144] degrees**; full `SendovClaim` is unproved.
See `research/jsp404-twentyeight-exact.md`. The former parity plan is now
completed; the separate eighteen-mask order exploration is explicitly
unproved and establishes no 27-point value. No new external literature or
priority search was made, and no novelty claim is made.

## Retained result: the exact twenty-nine-point value is 144 degrees

`ThreeArcNineteen.lean` excludes saturation of the twenty ten-sector masks.
First widen d slightly to d'<36/5; the resulting slack preserves pairwise
antipodal intersections under a small translation of one row. Translate
all rows so the first row starts at zero, then move only that row slightly
left. Its mask changes: the old mask contains sector 4 and the new mask
contains sector 9, which are antipodes. The other nineteen masks stay fixed.
If twenty rows existed, they would fill all twenty types, forcing the
changing mask to stay fixed, a contradiction. Boundary crossings of the
other two starts do not require any genericity assumption.

`ThreeArcPerturb.lean` verifies stability of the interval witnesses and
`ThreeArcMaskEvent.lean` proves the mask-change argument.
`TwentynineExact.lean` combines the improved three-arc capacity nineteen
with the existing single-arc capacity nine. Every finite ordinary planar
configuration whose angles are all below 144 degrees has at most 28 points.
The existing binary construction gives the matching upper bound, proving
**alpha(29)=4*pi/5=144 degrees** and full `IsSharpBound` for 29<=N<=32.
No convexity, general-position, or realizability hypothesis is added.

That preceding snapshot added fourteen audited theorems in four modules.
At that stage N=21 through 28 remained
in **[140,144] degrees**; full `SendovClaim` is unproved.
See `research/jsp404-twentynine-exact.md`. The parity route was recorded as unproved at that stage and is completed
by the new result above.
No new external search or novelty/priority claim is made in this snapshot.

## Retained result: the exact thirty-point value is 144 degrees

`ThreeArcTwenty.lean` proves a uniform capacity of twenty for antipodally
compatible three-arc covers below 144 degrees. Quantizing each direction
into ten sectors assigns each row one of twenty explicit masks; none contains
an antipodal pair. Opposite directions along an edge force different vertices
to have different masks. All finite checks use `decide +kernel`.

`ThirtyExact.lean` combines this with the existing single-arc capacity nine:
a finite ordinary planar configuration with all angles below 144 degrees
has at most 29 points. Thus every N>=30 configuration has an angle at least
144 degrees. The existing binary construction supplies the matching upper
bound for N<=32, proving full `IsSharpBound` for 30<=N<=32 and
**alpha(30)=4*pi/5=144 degrees**. Values 31 and 32 were already covered by
the earlier infinite families. No general-position, convexity, or
realizability hypothesis is added to the original target.

That preceding snapshot added fourteen audited theorems in two modules.
At that stage N=21 through 29 remained in **[140,144] degrees**; full `SendovClaim` is still unproved.
See `research/jsp404-thirty-exact.md` for the proof and exploration limits.
The logs also retain a rationally checked 20-point abstract direction model
and a 13-row pairwise three-arc model; neither asserts planar realizability.
The 21-point support-edge search (120 seconds) and the 12-three-arc ordered
search (90 seconds) timed out. Support-edge normalization is exploratory,
not a Lean assumption or a dependency of the new exact-value proof.

The following dated/retained accounts describe earlier milestones. Their
old 21-through-30 intervals are superseded at N=28 through 30 by the results above.

## Retained result: ordered forward-direction inequalities

`OrderedDirection144.lean` proves that any finite ordinary planar configuration
whose angles are all below 144 degrees yields an ordered direction model. A
nonzero complex similarity makes a projection injective, and sorting that
projection puts every forward direction in the open half-circle (0,9).
Neither injectivity of a specified projection nor general position is added
as a hypothesis on the original problem.

For every i<j<k, write u=q(i,j), v=q(i,k), w=q(j,k). The model proves strict
betweenness (u<v<w or w<v<u), endpoint differences at most d, and
|u-w| at least 9-d, for one common 6<=d<36/5. The exact strict difference
inequalities used by the search are also proved in Lean. These conditions
are necessary; sufficiency for actual planar realizability is not claimed.

That earlier module added 11 theorems without a new exact numerical value:
at that stage N=21 through 30 remained in **[140,144] degrees**. The direct 21-point search
timed out at 180 seconds. Incremental search exhausted a 120-second total
budget while checking 20 points; it did not reach 21. Its intermediate SAT
reports are not independently checked certificates. Final 10-point control
models in both search modes passed independent exact-rational checks.
These controls are abstract direction models, not claims about alpha(10).

See `research/jsp404-ordered-directions-144.md` for the complete scope and
recorded search limits. The unresolved step remains a uniform capacity proof
or a complete independently verified exclusion certificate.

## Retained result: a uniform planar reduction below 144 degrees

The finite one-arc/three-arc classification now holds for `6 <= d < 36/5`
on the circle of period 18, extending its previous `d < 7` range. Four existing
classification theorems have stronger statements; their old 140-degree uses
remain valid.

`ContinuousOneArc144.lean` proves that any antipodally compatible single-arc
family in this range has at most nine members. The argument uses strict
separation greater than 9/5 and nine anchored half-open bins.

`PlanarReduction144.lean` connects this to every finite ordinary planar
configuration with all distinct-point angles strictly below `4*pi/5`.
It constructs a model retaining reverse-edge relations, circular diameter,
triangle orientation consistency, and selected one-arc/three-arc covers.
At most nine covers can be single arcs. Consequently,
`twelve_three_covers_of_plane_counterexample` proves that **any counterexample
with at least 21 points must yield a model with at least twelve selected
three-arc vertices**. No general-position or convexity hypothesis is added.

The preceding reduction snapshot added ten theorems in two modules. This is a uniform necessary-condition
reduction, not an exclusion of the remaining model class. Selected cover types
are not claimed to be a geometric convex-hull/interior partition. The model
conditions are not asserted sufficient for planar realizability.
At that earlier stage the proved interval for N=21 through 30 was **[140,144] degrees**.
A 12-three-arc direction search with all 220 triangle constraints timed out
at 60 seconds; it supplies neither a model nor an exclusion proof.
See `research/jsp404-planar-reduction-144.md` for the argument and scope.

## Retained result: triangle constraints and a fixed-candidate exclusion

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

The preceding snapshot added 19 audited theorems in these two modules. This is a proof of a necessary
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
range remains **3 through 20**, with **28 through 30** additionally exact. Both bands' general upper bounds and weaker
general lower bounds remain included.

The next incomplete ordinary cardinalities are 21 through 27; their classical
target is 144 degrees. The arbitrary-cardinality sharp lower bounds and the
full `SendovClaim` remain unproved. A successful build of this snapshot must
not be interpreted as a solution of all of JSP-000404.

## Verification and reproduction

The full project build passed (3272 jobs), and the axiom audit passed all
2470 declarations, including the 64 new theorems. 4 declarations are
axiom-free; the rest use only `propext`, `Classical.choice`, and `Quot.sound`.
Original target definitions and all dependency pins are unchanged.

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
python3 scripts/build_sector 44_certificate.py
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
