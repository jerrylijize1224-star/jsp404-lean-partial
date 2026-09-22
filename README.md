# JSP-000404: verified partial Lean development

Published by GitHub account `jerrylijize1224-star`, from the project owner's AI-assisted Codex development.

Snapshot date: 2026-09-22. **This is not a complete solution or an award claim.**

This project studies JSP-000404 / Erdős 504, Blumenthal's maximum-angle
problem, in Lean 4 with mathlib. The intended full classification remains the
unproved proposition `Prize.JSP404.SendovClaim` in `Prize/JSP404/Target.lean`.
It is not presented as a theorem.

## Download the current snapshot

[Download the 2026-09-22 gap-restriction snapshot](jsp404-gap-restriction-20260922.zip) · [SHA-256](jsp404-gap-restriction-20260922.zip.sha256).

Archive SHA-256: `ef51d31c5bab1a0292b2de62dff8499339e2032b7071fdf712c651a5d3cdfc3d`.
Extract the ZIP and run the reproduction commands inside its project directory. File paths below refer to that directory; the archive includes a per-file manifest.

This update derives triangle restriction from actual cyclic gaps for arbitrary finite occupied-centre models. It proves individual local exponent bounds and the limits on how many exponents can reach n-1 in the two parameter bands. These results remove an earlier explicit triangle-restriction premise. The sharp total-capacity bound for five or more centres, general extremal reduction, and the full classification remain unproved.

Earlier snapshots are preserved: [finite clusters, 2026-09-21](jsp404-finite-clusters-20260921.zip), [four clusters, 2026-09-21](jsp404-four-clusters-20260921.zip), [conditional cluster counting, 2026-09-20](jsp404-cluster-counting-20260920.zip), [projective gaps, 2026-09-20](jsp404-projective-gaps-20260920.zip), [four centres, 2026-09-19](jsp404-four-centre-20260919.zip), [2026-09-18](jsp404-partial-20260918.zip). Sealed archives retain the publication notes written before their upload; repository history records subsequent publication.

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
- An exhaustive four-point geometric classification via Radon's theorem,
  and a common label-independent angle expression whose low- and high-band
  bounds follow for every four-point set with the stated actual angle cap.
  General position is derived from the cap, not imposed as a new hypothesis.
- Actual projective coordinates and sorted cyclic gaps for three outgoing
  directions at a centre. Their existence, positivity, sum, and equality to
  the common local index are proved, including independence from ray choices.
  This identifies the four-centre expression with actual cyclic-gap capacity.
- Counting for abstract generalized directions, restriction to clusters, and
  angular exclusion from external centre directions. Closed allowed gap
  intervals have explicitly constructed strictly narrow covers, including
  integer endpoints. Given allowed gap coordinates for all internal lines,
  the resulting actual sectors prove the corresponding power-of-two bound.
  For three actual anchor directions, existence of allowed coordinates is now
  proved, including the cyclic gap across pi/zero.
- A four-cluster model with four distinct actual centres, occupied clusters,
  nonzero antisymmetric leaf directions, and cross-cluster directions equal to
  centre differences. The angle bound implies the centre angle cap and the
  required internal direction separation. Each cluster's cardinality is bounded
  by its local capacity, and their total satisfies both four-centre bands.
- For any finite number of occupied centres at least two, actual sorted
  direction charts exist and their cyclic gaps are positive and sum to pi.
  Internal allowed coordinates follow from the angular restrictions. Cluster
  cardinalities are bounded by their local capacities and total cardinality by
  the sum of those capacities. The sorted angles, cyclic gaps, and local indices
  are independent of the chosen valid chart. The sharp bound on this sum for five or more
  centres remains unproved.
- For these actual finite models, retaining two outgoing directions merges
  the cyclic gaps into the two triangle gaps without decreasing local capacity.
  Thus triangle restriction is proved rather than assumed. For at least three
  centres, `n >= 2`, and `n <= t < n + 1`, every local exponent is at most `n-1`.
  At most one reaches `n-1` in the lower half-band, and at most two throughout
  the band. These constraints do not bound the total of all smaller weights.

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
| Exhaustive classification | `FourCentreClassification.lean`: `four_centre_geometry_cases_of_angle_bound` |
| Common local expression | `FourCentreLocalIndex.lean`: `InteriorFourGeometry.labelled_capacity_eq`, `ConvexFourGeometry.labelled_capacity_eq` |
| Point-set expression and bounds | `FourCentreCapacity.lean`: `fourCentreCapacity_eq_labelled`, `fourCentreCapacity_low`, `fourCentreCapacity_high` |
| Actual projective coordinates | `ProjectiveCoordinates.lean`: `exists_projective_coordinates` |
| Sorted actual direction charts | `ThreeDirectionChart.lean`: `exists_pointDirectionChart`, `SortedThreeDirectionChart.index_eq_gaps` |
| Cyclic gaps and four-centre capacity | `FourCentreProjectiveGaps.lean`: `exists_four_direction_charts`, `projective_gapIndex_independent`, `fourCentreCapacity_eq_projectiveGaps` |
| Allowed coordinates from actual anchors | `ThreeGapAllowed.lean`: `SortedThreeDirectionChart.exists_allowed_coordinates`, `GeneralizedDirections.cluster_card_le_gap_capacity` |
| Four-cluster cardinality | `FourClusterCounting.lean`: `FourClusterModel.card_le_capacity`, `.card_low`, `.card_high` |
| Arbitrarily many actual directions | `FiniteDirectionChart.lean`: `exists_sortedDirectionChart`, `SortedDirectionChart.gap_sum`, `.exists_allowed_coordinates` |
| Arbitrary finite clusters, local bound | `FiniteClusterCounting.lean`: `FiniteClusterModel.cluster_card_le_gapIndex`, `.exists_capacity_bound` |
| Independence from chart choices | `FiniteDirectionInvariance.lean`: `SortedDirectionChart.theta_unique`, `.gap_unique`, `.gapIndex_unique` |
| Actual cyclic gap restriction | `FiniteGapRestriction.lean`: `SortedDirectionChart.gap_sum_Ico`, `.gap_sum_compl_Ico`, `.gapIndex_le_anchor_angle` |
| Exponent bounds for actual finite centres | `FiniteMaximalCentres.lean`: `FiniteClusterModel.gapIndex_le_triangle`, `.gapIndex_le_pred`, `.triple_capacity_low`, `.triple_capacity_high`, `.maximal_exponents_low`, `.maximal_exponents_high` |

The independent counting arguments use floor inequalities and triangle-angle
identities, rather than assuming the maximizing exponent profiles in the
published induction. This describes the proof route in this development;
it is not a claim of mathematical novelty or first formalization.

## Remaining gaps

1. A full reduction from arbitrary ordinary configurations to the generalized
   configurations used by the argument. The four-cluster model now has a complete
   cluster-capacity link; no assertion that all configurations reduce to four
   clusters is made.
2. A sharp total-capacity inequality for five or more centres. The arbitrary-size
   projective-gap model and the local cluster-to-capacity counting are now
   provided, but their sum has not been bounded by the claimed sharp bands.
3. Full sharpness constructions and assembly of the arbitrary-cardinality theorem.

The earlier triangle-restriction hypothesis in
`research/jsp404-maximal-centres.md` is now derived for actual finite centre
models; see `research/jsp404-gap-restriction.md`. The ordinary-configuration
reduction and sharp global weight bound remain open in this development.
No hypothesis has been added to `SendovClaim`.
Computational experiments are discovery aids, not proofs.

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
Build job counts include dependencies and are not counts of new theorems.
This snapshot has not received an independent external
review or a fresh-machine rebuild.

The audited theorem dependencies are only `propext`, `Classical.choice`, and
`Quot.sound`. The project Lean proofs use no `sorry`, `admit`, added
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

This file prepares the next standalone research snapshot. Earlier versions
are public in [the project owner's repository](https://github.com/jerrylijize1224-star/jsp404-lean-partial);
their fixed commits and archive checksums are recorded in
`research/jsp404-publication.md`. The publication record for this revision
must be checked separately from those earlier commits. The prize repository's
[current contribution rules](https://github.com/TheJustinSunPrize/awards/blob/main/CONTRIBUTING.md)
accept complete original-problem solutions, not intermediate formalizations.
This snapshot is therefore intended for the project owner's own repository,
not as a completed prize submission.
