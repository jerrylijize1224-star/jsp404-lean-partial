# JSP-000404: verified partial Lean development

Snapshot date: 2026-10-07. **This is not a complete solution or an award claim.**

This project studies JSP-000404 / Erdős 504, Blumenthal's maximum-angle
problem, in Lean 4 with mathlib. The intended full classification remains the
unproved proposition `Prize.JSP404.SendovClaim` in `Prize/JSP404/Target.lean`.
It is not presented as a theorem.

## Download the current snapshot

[Download the 2026-10-07 26-sector lower-bound snapshot](jsp404-sector26-lower-20261007.zip) · [SHA-256](jsp404-sector26-lower-20261007.zip.sha256).

`fb18a12d8e4af78b08e948e362af2461cba5bd44ed934b940130cd4df531826e  jsp404-sector26-lower-20261007.zip`

New verified interval: **138.461538… degrees <= alpha 17 <= 140 degrees**.
The lower endpoint is exactly `(1800/13)` degrees, with remaining gap `20/13` degrees.
The proof applies to arbitrary finite point sets and has been connected to the original definitions.
Full build: 3150 jobs including dependencies; all 458 axiom checks passed.
The exact 140-degree value and the general classification remain unproved.

Earlier snapshots are preserved: [all near-dyadic values, 2026-10-05](jsp404-all-near-dyadic-20261005.zip), [odd-exponent predecessor values, 2026-10-05](jsp404-odd-near-dyadic-20261005.zip), [exact nine and ten points, 2026-10-04](jsp404-nine-ten-exact-20261004.zip), [deficit budget and obstruction, 2026-09-30](jsp404-deficit-obstruction-20260930.zip), [weighted Boolean cover, 2026-09-30](jsp404-weighted-cover-20260930.zip), [sharp dyadic values, 2026-09-30](jsp404-dyadic-sharp-20260930.zip), [unordered-edge explicit margin, 2026-09-29](jsp404-edge-lower-20260929.zip), [explicit phase-bin margin, 2026-09-28](jsp404-quantitative-lower-20260928.zip), [strict lower bound and existential margin, 2026-09-27](jsp404-strict-lower-20260927.zip), [uniform lower bound and limit, 2026-09-27](jsp404-uniform-lower-20260927.zip), [first-band general upper bound, 2026-09-27](jsp404-first-band-upper-20260927.zip), [general dyadic upper bound, 2026-09-26](jsp404-dyadic-upper-20260926.zip), [general binary scales and sixteen-point upper bound, 2026-09-26](jsp404-binary-scales-20260926.zip), [exact seven- and eight-point values, 2026-09-26](jsp404-binary-eight-20260926.zip), [exact five-point value, 2026-09-26](jsp404-five-points-20260926.zip), [exact six-point value, 2026-09-25](jsp404-six-points-20260925.zip), [ordinary lower bounds, 2026-09-25](jsp404-first-band-lower-20260925.zip), [pentagon ordering, 2026-09-23](jsp404-pentagon-order-20260923.zip), [exterior bounds and five centres, 2026-09-22](jsp404-exterior-five-20260922.zip), [convex position, 2026-09-22](jsp404-convex-position-20260922.zip), [gap restriction, 2026-09-22](jsp404-gap-restriction-20260922.zip), [finite clusters, 2026-09-21](jsp404-finite-clusters-20260921.zip), [four clusters, 2026-09-21](jsp404-four-clusters-20260921.zip), [conditional cluster counting, 2026-09-20](jsp404-cluster-counting-20260920.zip), [projective gaps, 2026-09-20](jsp404-projective-gaps-20260920.zip), [four centres, 2026-09-19](jsp404-four-centre-20260919.zip), [2026-09-18](jsp404-partial-20260918.zip). Sealed archives retain the publication notes written before their upload; repository history records subsequent publication.

## Verified scope

This snapshot raises the verified ordinary 17-point lower bound from
`(103/137)*pi` to **`(10/13)*pi`**, giving
**`(1800/13) degrees <= alpha 17 <= 140 degrees`**.
The remaining interval width is `20/13` degrees (about 1.538462 degrees).
More generally, `GuaranteedAngle N (10*pi/13)` holds for every `N >= 17`.
No convexity or general-position hypothesis is added.

The proof quantizes directions into 26 half-open sectors. A kernel-checked
cover lists 156 direction types, split into families of 130 and 26 types.
A proved clique-certificate checker bounds each family's compatible cliques
by eight; antipodal edge consistency then bounds every counterexample by
16 points. The floor/argument quantization and transfer to the original
Euclidean-plane definitions are proved in Lean. Python only discovers and
exports finite data; all certificate checks use kernel reduction.
The new theorem's import closure is 33 local modules plus mathlib, without
the external nine- or eleven-point certificates.
The exact 17-point value 140 degrees and the full classification remain
unproved. No mathematical novelty or first-formalization claim is made.
See `research/jsp404-sector26-bound.md` for proof details and scope.

The snapshot also retains `alpha (2^k-1) = (1-1/k)*pi` for **every** `k >= 3`,
with full `IsSharpBound`. It removes the earlier odd-exponent restriction.
New concrete values include `alpha 63 = 5*pi/6 = 150 degrees` and
`alpha 255 = 7*pi/8 = 157.5 degrees`; the earlier 31/127 cases remain verified.
A rotation by one sector cyclically reindexes cube coordinates and flips one bit.
For all dimensions at least three this is an even permutation reversing the
vacancy checkerboard color, contradicting the connected-cover invariant.
Its dependency closure contains 28 local modules and mathlib only, with no
finite nine- or eleven-point certificates. These are classical mathematical
values; no new discovery or first-formalization claim is made.
See `research/jsp404-near-dyadic.md` for the proof and limitations.

The snapshot retains the attributed integration of the eleven-point lower certificate
from hit1190100321's [PR #647](https://github.com/TheJustinSunPrize/awards/pull/647),
pinned at `2d0c118ba083a5a75609e8dd586e7a478b4a6dab`. All 368 selected unchanged
modules were rebuilt locally with `--trust=0`. Our original targets and
existing upper construction now give `alpha N = 3*pi/4` and full `IsSharpBound`
for `11 <= N <= 16`. This is verified reuse, not an independently generated
certificate. Ordinary exact values now cover 3 through 16, all powers of two,
and every one below a power of two with exponent at least three. The general sharp
lower bounds and full `SendovClaim` remain unproved; the 17-point interval
is now `(1800/13) degrees <= alpha 17 <= 140 degrees`.


- Actual Euclidean-plane definitions, monotonicity, general-position reduction,
  sharpness interfaces, and the exact values `alpha 3 = pi / 3` and
  `alpha 4 = pi / 2`, `alpha 5 = (3/5)*pi`, and
  `alpha 6 = alpha 7 = alpha 8 = (2/3)*pi`.
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
- When `0 < t < 3`, the actual angle cap implies convex independence of
  every finite plane point set and of the finite model's centre family.
  Caratheodory's theorem reduces convex-hull membership to at most three
  supporting points; the angle cap excludes both segment and triangle
  interior cases. Convex position is derived, not added as an assumption.
  The new six-point argument bounds the number of centres by five for t < 3;
  the general sharp total-capacity bound at higher parameters remains unproved.
- Conditional exterior-budget arithmetic: if scaled quantities lie in
  `[1,3)` and sum to `2*t`, their gap-capacity weights sum to at most `2*t`,
  hence at most four for `t < 5/2` and five for `t < 3`. Their identification
  with actual polygon exterior angles and local indices remains unproved.
- A local geometric interface identifies the index with the exterior-gap
  capacity when a sorted direction chart has a common ray sign and its endpoint
  angle obeys the cap. Constructing these charts by rotation from convex
  position, rotation invariance, and the polygon exterior-angle sum remain open.
- A subsequent route avoids rotation entirely: actual triangle restriction
  gives a local exterior-capacity upper bound for `t < 3`. For finite models,
  an explicit normalized exterior-angle sum at most two then bounds the sum
  of local weights, and actual label count, by `2*t`. Thus counts at most four
  or five follow in the first two bands, conditional on that angle budget.
  Constructing suitable neighbours and proving the budget for arbitrary centre
  counts remains unproved; these are not unconditional arbitrary-size bounds.
- For five labelled centres with three specified strict diagonal crossings,
  the actual angle decompositions prove an interior-angle sum of `3*pi` and
  an exterior-angle sum of `2*pi`. A five-cluster model with this incidence
  certificate has exactly five labels under the cap for `1 <= t < 3`, and
  cannot satisfy the cap for `1 <= t < 5/2`.
- A suitable crossing labelling now exists for every convex-independent
  five-point set: strict separation supplies positive affine ray coordinates,
  slope sorting and Radon classification force the required crossings.
  Relabelling the finite model therefore removes the crossing assumptions.
  Every five-centre model under the cap with `1 <= t < 3` has exactly five
  labels, and no such model satisfies the cap with `1 <= t < 5/2`.
  The higher-parameter cases remain open. The new six-point argument excludes
  six or more centres for 0 < t < 3.
- Every finite convex-independent family has a reindexing with strict crossings
  for all ordered triples of rays from a base vertex. In the six-point case,
  this gives a hexagon angle sum of 4*pi. Therefore any ordinary finite point
  set under the cap for 0 < t < 3 has at most five points, and any finite cluster
  model in that band has at most five occupied centres.
- For the original ordinary configurations, every set of at least five points
  has an angle at least 3*pi/5 (108 degrees), and every set of at least six
  points has an angle at least 2*pi/3 (120 degrees). The statements feed directly
  into GuaranteedAngle and alpha, without a cluster-reduction assumption.
  They prove the lower-bound direction for n=5 and n=6,7,8 in the target formula;
  matching sharpness constructions for all four cases are now provided below,
  using approximation for seven and eight points.
- An explicit regular hexagon with coordinates involving sqrt(3) has six
  distinct points and every angle at most 120 degrees. A polynomial
  inner-product certificate verifies all triples using exact real arithmetic.
  Together with the ordinary lower bound, this proves sixPoints_sharp and
  alpha_six for the original problem. No finite-cluster premise is used.
- Five explicit points built from the golden ratio phi and sqrt(phi+2) are
  distinct and have every angle at most 108 degrees. Their inner-product
  certificates follow from exact polynomial identities; the trigonometric
  value uses mathlib's cos(pi/5) formula. This proves fivePoints_sharp and
  alpha_five, completing both directions for the original five-point problem.
- A finite simultaneous approximation theorem converts explicit positively
  scaled point differences and nonzero continuous limiting directions into
  distinct ordinary points with angles below A+epsilon. Its hypotheses are
  discharged for eight points with binary offsets at scales 1,t,t^2 along
  directions 0,60,120 degrees. This proves sevenPoints_sharp, eightPoints_sharp,
  alpha_seven and alpha_eight. Approximate counterexamples suffice; no exact
  attaining seven- or eight-point configuration is claimed.
- For any finite number n of binary levels, first-difference factorization
  provides polynomial normalized differences with nonzero limits. Given
  nonzero axes with all distinct-axis signed angles at most A, A >= 0,
  this constructs exactly 2^n ordinary points with every angle below A+epsilon
  for every positive epsilon. The axis hypotheses are explicit, not assumed
  to hold automatically for sharp A at every n.
- Four explicit axes at 0,45,90,135 degrees discharge those conditions for
  A=3*pi/4. This gives sixteen-point approximations and alpha m <= 3*pi/4
  for 3 <= m <= 16. The rotating-sector lower bound below now proves
  equality alpha 16 = 3*pi/4.
- Equally spaced unit axes now discharge the binary-construction hypotheses
  for every n >= 2, with bound (1-1/n)*pi. Exact inner products and arccos
  identities give the angle between axes; sign changes give the supplementary
  angle. Thus alpha m <= (1-1/n)*pi for 3 <= m <= 2^n, and every larger angle
  fails to be guaranteed. This proves the general upper-bound direction of
  the second band in SendovClaim. The matching general lower bound remains
  unproved; the first band construction is supplied below.

- Three explicitly parametrized binary clusters around centres
  (-cos(delta),0), (cos(delta),0), (0,sin(delta)), delta=pi/(2*k+1), now give
  exactly 2^k+2^(k-2) ordinary points below (1-2/(2*k+1))*pi plus any positive
  error. A cluster approximation theorem verifies internal, mixed and centre
  angle obligations; all those hypotheses are discharged for the concrete
  construction. This proves the first band's general upper bound for every
  k >= 2, without an attainment or generalized-configuration realization premise.
  Both bands' general upper bounds are now proved; their matching general lower bounds remain open.

- Uniform half-open projective sectors discharge the direction-cover premise
  for every positive integer k: an ordinary finite configuration, or abstract
  nonzero antisymmetric directions, with all angles <= pi-pi/k has at most 2^k
  labels. Hence N>2^k implies alpha N >= (1-1/k)*pi. The proof allows collinear
  ordinary configurations and has no cluster-reduction assumption.
- The quantitative estimate 0 <= pi-alpha N <= pi/k for N>2^k, and
  alpha N tending to pi at infinity. Combined intervals for both bands and the
  example 3*pi/4 <= alpha 17 <= 7*pi/9 are verified. These lower bounds are
  not the matching sharp values required by SendovClaim.


- A compact relaxation of normalized antisymmetric direction assignments,
  with continuous finite maximum triple angle. The counting obstruction on
  this larger space gives alpha N > (1-1/k)*pi for N>2^k. For each k, one
  existential positive margin works for every N>2^k. That compactness proof alone does not determine its numerical size; the
  explicit refinement below now supplies a margin. The compactness result gives
  3*pi/4 < alpha 17 <= 7*pi/9, without proving the exact value.
  No attainment of alpha by ordinary configurations or realizability of
  arbitrary abstract direction assignments is asserted.

- An explicit finite-phase refinement now gives
  alpha N >= (1-1/k)*pi + pi/(k*(N^2+1)) for k>0 and N>2^k.
  An empty one-of-(N^2+1) phase bin shortens all covering sectors, with
  harmless dummy diagonal directions and no extra geometric premise.
  Monotonicity replaces N in the denominator by 2^k+1 for a common explicit
  margin at all larger cardinalities. The seventeen-point interval becomes
  (871/1160)*pi <= alpha 17 <= (7/9)*pi, or approximately 135.155172 to
  140 degrees. This is still a non-sharp lower bound, not the full classification.

- One representative for each unordered edge removes the reverse and diagonal
  duplicates: alpha N >= (1-1/k)*pi + pi/(k*(choose(N,2)+1)) for k>0 and N>2^k.
  This is formally proved strictly stronger than the preceding N^2 estimate.
  The representative-counting interface is general, and its label order adds
  no geometric assumption to ordinary configurations. The seventeen-point
  interval improves to (103/137)*pi <= alpha 17 <= (7/9)*pi, approximately
  135.328467 to 140 degrees. This earlier bound is superseded at 17 points
  by the 26-sector lower bound above. The sharp target remains unproved.

- The equality case of the binary cover count is now analyzed: saturation
  forces every vertex to meet every relation. Open relations along a connected
  parameter interval cannot all reverse their arrows at the endpoints while
  staying saturated. Actual rotating open angular sectors discharge these
  hypotheses whenever the angle cap is strictly below pi-pi/k.
- A finite maximum angle closes the endpoint, proving the ordinary lower bound
  at N >= 2^k. Together with the existing binary constructions this gives
  alpha(2^k) = (1-1/k)*pi and IsSharpBound for every k >= 2. In particular,
  alpha 16 = 135 degrees and alpha 32 = 144 degrees. This is a classical
  infinite subfamily, not the complete non-dyadic Sendov classification.

- A weighted Boolean-cover inequality retains all compatible codes at each
  vertex. If f(v) relations have no incident edge at v, then sum_v 2^f(v) <= 2^k.
  In particular, N plus the number of vertices missing any one fixed relation
  is at most 2^k. Actual rotating open sectors satisfy this inequality whenever
  pi/(2*k) < r and 2*r < pi-a for an angle cap a >= 0.
- Every fixed vertex and relation has some unused position during reversal.
  That position can depend on both choices. A lower bound on simultaneous
  total free-bit weight at one rotation remains unproved. These are verified
  counting tools; those tools alone do not improve numerical alpha bounds.

- The total free-slot budget is now N + sum_v f(v) <= 2^k. If N+1=2^k,
  at most one vertex-sector pair can be free at any rotation. An actual ordinary
  equilateral triangle supplies a counterexample to unrestricted simultaneous
  deficit claims: each of its six vertex-sector pairs has an unused position,
  but no two can be unused at the same position. This does not refute Sendov's
  classification or exclude overlap estimates using additional large-N data.

- Exact ordinary nine- and ten-point values are now connected to this project's
  original definitions: alpha 9 = alpha 10 = 5*pi/7, with the full IsSharpBound
  statement. The nine-point lower certificate and actual geometry-to-model
  transfer are attributed unchanged imports from zilan520's PR #100 at
  d869ab901722fab0b2d980b38b7bd958cf52c128, recompiled locally with --trust=0.
  This project's existing first-band construction supplies the matching upper
  bound. This is verified reuse and integration, not an independently generated
  nine-point lower proof. It adds no convexity or general-position assumption.

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
| Convex position below the 120-degree cap | `SmallAngleConvexPosition.lean`: `notMem_triangle_of_angle_bound`, `notMem_convexHull_erase_of_angle_bound`, `convexIndependent_of_angle_bound`, `FiniteClusterModel.centres_convexIndependent` |
| Conditional exterior-budget arithmetic | `ExteriorBudget.lean`: `gapBits_weight_le_of_one_le_lt_three`, `exterior_budget_weight_sum`, `exterior_budget_low`, `exterior_budget_high` |
| Conditional local exterior-gap identity | `SemicircleGapCapacity.lean`: `SortedDirectionChart.gapIndex_eq_exterior_of_same_ray` |
| Local exterior upper bound without rotation | `FiniteExteriorBound.lean`: `SortedDirectionChart.gapIndex_le_exterior`, `FiniteClusterModel.gapIndex_le_exterior` |
| Actual total count with an explicit exterior budget | `FiniteExteriorBound.lean`: `FiniteClusterModel.capacity_le_twice_parameter_of_exterior_budget`, `.card_le_twice_parameter_of_exterior_budget`, `.card_le_four_of_exterior_budget`, `.card_le_five_of_exterior_budget` |
| Five-centre budget from actual crossings | `PentagonExterior.lean`: `PentagonFan.angle_sum`, `.exterior_sum`, `FiniteClusterModel.card_eq_five_of_pentagon_fan`, `.not_angleBound_of_pentagon_fan_low` |
| Supporting ray coordinates | `ConvexRayCoordinates.lean`: `exists_positive_support`, `exists_complementary_coordinate`, `slope_injective_of_positive_support` |
| Ordered rays force strict crossings | `ConvexFourCrossings.lean`, `OrderedRayCrossing.lean`: `convex_four_weak_crossing_cases`, `ordered_rays_crossing` |
| Five-point labelling existence and five-cluster count | `PentagonOrder.lean`: `exists_pentagonFan_reindex`, `FiniteClusterModel.card_eq_five_of_lt_three`, `.not_angleBound_of_five_centres_low` |
| General convex fan ordering | `ConvexFanOrder.lean`: `exists_convexFanCrossings_reindex` |
| Six-point obstruction and centre count | `SixPointObstruction.lean`: `ConvexFanCrossings.hexagon_angle_sum`, `card_le_five_of_angle_bound`, `FiniteClusterModel.centres_card_le_five_of_lt_three` |
| Ordinary 108/120-degree universal bounds | `FirstBandLowerBounds.lean`: `hasLargeAngle_three_pi_div_five`, `hasLargeAngle_two_pi_div_three`, `three_pi_div_five_le_alpha`, `two_pi_div_three_le_alpha` |
| Exact six-point value | `SixPoints.lean`: `angle_le_two_pi_div_three_of_inner`, `hexagonSet_card`, `hexagonSet_angle`, `sixPoints_sharp`, `alpha_six` |
| Exact five-point value | `FivePoints.lean`: `angle_le_of_inner_certificate`, `goldenPentagon_inner_certificate`, `pentagonSet_card`, `pentagonSet_angle`, `fivePoints_sharp`, `alpha_five` |
| Finite simultaneous realization | `FiniteAngleApproximation.lean`: `exists_finite_angle_approximation` |
| Binary eight-point approximations | `BinaryEightConstruction.lean`: `binaryEight_difference`, `binaryEightNormal_nonzero`, `binaryEightNormal_angle`, `exists_eightPoint_counterexample` |
| Exact seven- and eight-point values | `BinaryEightConstruction.lean`: `first_high_band_sharp`, `sevenPoints_sharp`, `eightPoints_sharp`, `alpha_seven`, `alpha_eight` |
| Arbitrary finite binary scales | `BinaryScaleConstruction.lean`: `binaryScale_difference`, `binaryScaleNormal_signed`, `exists_binaryScale_counterexample`, `binaryScale_alpha_le` |
| Sixteen-point upper bound | `SixteenPointUpperBound.lean`: `fourBinaryAxes_angle`, `exists_sixteenPoint_counterexample`, `alpha_le_three_pi_div_four`, `alpha_sixteen_bounds` |
| All binary thresholds and second-band upper bound | `EquallySpacedBinaryAxes.lean`: `equallySpacedBinaryAxes_signed_angle`, `exists_dyadic_counterexample`, `dyadic_not_guaranteed`, `dyadic_alpha_upper`, `sendov_high_band_upper` |
| Cluster realization from explicit coordinates | `ClusterApproximation.lean`: `clustered_difference`, `clusteredNormal_angle`, `exists_clustered_approximation` |
| First-band axes and actual centre geometry | `FirstBandAxes.lean`, `FirstBandTriangle.lean`: `firstBandAxis_angle`, `firstBandAxis_centre_angle`, `firstBandCentre_angle` |
| First-band ordinary construction and general upper bound | `FirstBandConstruction.lean`: `exists_firstBand_approximation`, `firstBandLabel_card`, `exists_firstBand_counterexample`, `sendov_low_band_upper` |
| Uniform sectors and general lower bound | `UniformSectorLowerBound.lean`: `card_le_two_pow_of_uniform_angle`, `uniform_alpha_lower`, `alpha_within_pi_div`, `alpha_tendsto_pi` |
| Combined intervals and seventeen points | `GeneralAngleBounds.lean`: `low_band_alpha_bounds`, `high_band_alpha_bounds`, `alpha_seventeen_bounds` |
| Compact normalized direction space | `CompactDirectionSpace.lean`: `isCompact_unitDirectionAssignments`, `continuousOn_maximumAssignmentAngle`, `GeneralizedDirections.normalizedAssignment_angle` |
| Strict general lower bound and common margin | `StrictUniformLowerBound.lean`: `exists_uniform_direction_margin`, `uniform_alpha_strict_lower`, `exists_uniform_alpha_gap`, `alpha_seventeen_strict_bounds` |
| Empty phase bin and shortened sectors | `FinitePeriodicGap.lean`, `QuantitativeSectorCover.lean`: `exists_empty_phase_bin`, `exists_short_sector_cover` |
| Explicit positive margin and seventeen-point bound | `QuantitativeLowerBound.lean`: `quantitative_alpha_lower`, `quantitative_alpha_lower_uniform`, `alpha_seventeen_quantitative_bounds` |
| Unordered edge representatives and stronger explicit bound | `EdgeDirectionLowerBound.lean`: `GeneralizedDirections.card_le_of_representatives`, `quantitativeAngle_lt_edgeAngle`, `edge_alpha_lower_uniform`, `alpha_seventeen_edge_bounds` |
| Equality obstruction for connected reversing covers | `SaturatedCover.lean`: `saturated_cover_incident`, `card_lt_two_pow_of_open_reversing_cover` |
| Actual rotating open sectors and strict count | `RotatingSectorCover.lean`: `exists_rotating_open_sector`, `GeneralizedDirections.card_lt_two_pow_of_strict_angle` |
| All sharp dyadic values | `DyadicSharp.lean`: `guaranteedAngle_dyadic_bound`, `alpha_dyadic`, `dyadic_isSharpBound`, `alpha_sixteen`, `alpha_thirty_two` |
| Weighted Boolean capacity | `WeightedDirectionCover.lean`: `compatibleCoverCode_card`, `weighted_card_le_two_pow_of_no_two_step_cover`, `card_add_isolated_le_two_pow` |
| Rotating sector deficit interface | `RotatingCoverDeficit.lean`: `exists_unused_relation_of_open_reversal`, `GeneralizedDirections.rotating_weighted_capacity`, `GeneralizedDirections.exists_rotating_unused` |
| Total free-slot budget | `CoverDeficitBudget.lean`: `card_add_free_slots_le_two_pow`, `near_saturated_free_slots_le_one`, `near_saturated_free_slot_unique` |
| Actual rotating obstruction | `RotatingDeficitObstruction.lean`: `GeneralizedDirections.exists_rotating_unique_free_slot`, `exists_ordinary_rotating_deficit_obstruction`; `ThreePoints.lean`: `exists_three_point_equiangular` |
| Exact nine- and ten-point values by attributed integration | `NineTenExact.lean`: `guaranteedAngle_nine_five_pi_sevenths`, `nine_ten_isSharpBound`, `alpha_nine`, `alpha_ten` |
| Exact 11–16 by attributed integration | `ElevenSixteenExact.lean`: `eleven_sixteen_isSharpBound`, `alpha_eleven_to_sixteen` |
| Vacancy parity along open covers | `NearSaturatedParity.lean`: `completionParity_constant`, `not_card_succ_eq_of_open_reversing_cover` |
| Odd binary exponent minus one | `OddNearDyadicSharp.lean`: `odd_dyadic_pred_isSharpBound`, `alpha_odd_dyadic_pred`, `alpha_thirty_one`, `alpha_one_twenty_seven` |
| All binary predecessors, k≥3 | `CubeStepParity.lean`, `NearDyadicSharp.lean`: `dyadic_pred_isSharpBound`, `alpha_dyadic_pred`, `alpha_sixty_three`, `alpha_two_fifty_five` |
| Certified 26-sector lower bound | `Sector26LowerBound.lean`: `guaranteedAngle_sector26`, `sector26_alpha_lower`, `alpha_seventeen_sector26_bounds` |
| Finite checker and exhaustive type cover | `FiniteCliqueCertificate.lean`, `FiniteCliqueCover.lean`, `Sector26Types.lean` |
| Family capacity and geometric quantization | `Sector26ArcCertificate.lean`, `Sector26NonarcCertificate.lean`, `Sector26DiscreteBound.lean`, `Sector26Quantization.lean` |

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
   provided, but their sum has not been bounded by the claimed sharp bands in
   general. The five-centre actual count for `t < 3` is now established;
   six or more centres are now excluded for t < 3. The higher-parameter
   sharp total-capacity bounds remain unproved.
3. Matching sharp general lower bounds and assembly of the arbitrary-cardinality
   theorem. Concrete ordinary-point constructions now give both bands' general
   upper bounds. The matching general lower bounds away from binary cardinalities are still missing. Exact
   ordinary cases n=3 through n=16, all 2^k (k>=2), and 2^k-1 for all k>=3 are proved;
   general non-dyadic cases remain incomplete. The weighted rotating-cover route
   additionally needs a lower estimate of simultaneous free-bit weight at a
   common rotation; separate existence of unused positions is insufficient.

The earlier triangle-restriction hypothesis in
`research/jsp404-maximal-centres.md` is now derived for actual finite centre
models; see `research/jsp404-gap-restriction.md`. The ordinary-configuration
reduction and sharp global weight bound remain open in this development.
No hypothesis has been added to `SendovClaim`.
Computational experiments are discovery aids, not proofs.

## Reproduction and verification

Pinned Lean: `leanprover/lean4:v4.34.0`.
Pinned mathlib: `5ed2965256430c3649e86755f9576b54eca72435`.
All transitive mathlib revisions are recorded in `lake-manifest.json`.
The external nine-point certificate is fixed to zilan520/awards commit
`d869ab901722fab0b2d980b38b7bd958cf52c128`, with 59 unchanged Lean sources
individually pinned in `research/jsp404-nine-source-lock.json`. Source snapshots
are downloaded into the ignored `.lake/external` directory and are not bundled.
The eleven-point closure is fixed to hit1190100321/awards commit
`2d0c118ba083a5a75609e8dd586e7a478b4a6dab`, with all 368 selected sources
hashed in `research/jsp404-eleven-source-lock.json`.

Install [elan](https://lean-lang.org/install/), then run in the extracted
project root, preserving the supplied lock file:

```sh
python3 scripts/prepare_nine_certificate.py
python3 scripts/prepare_eleven_certificate.py
lake exe cache get
python3 scripts/build_nine_certificate.py
python3 scripts/build_eleven_certificate.py
lake build
lake env lean Prize/Audit.lean
```

The source project was checked with `./scripts/lake.sh build`, followed by
`./scripts/lake.sh env lean Prize/Audit.lean`; both exited successfully.
The wrapper selects the locally installed pinned toolchain and checks the
external certificate source hashes. External modules are compiled with
`--trust=0`; their per-module logs are included under `verification/nine-certificate/` and
`verification/eleven-certificate/`.
The external certificate and ordinary-plane transfer are attributed reuse,
not independently generated lower proofs by this project.
The included logs are `verification/build.log` and `verification/axioms.log`.
This run completed 3150 build jobs and all 458 listed axiom checks.
All 46 theorems in the eight new modules are included in the audit; one
is axiom-free, and the others use only subsets of the standard foundations.
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
- [PR #100](https://github.com/TheJustinSunPrize/awards/pull/100), by zilan520,
  supplies this snapshot's externally pinned nine-point lower certificate and
  necessary geometric transfer. The selected 59 unchanged modules were rebuilt
  locally. Its separate upper-bound package and full original submission were
  not rebuilt here; our existing upper construction is used instead.
- [PR #647](https://github.com/TheJustinSunPrize/awards/pull/647) reports the
  eleven-point bound and exact values for N=11–16, with N=16 attributed to
  prior work. Its selected 368-module direction-certificate closure was rebuilt
  locally and connected to our own upper bounds in this snapshot.
- [PR #300](https://github.com/TheJustinSunPrize/awards/pull/300) describes
  another overlapping partial development and the general counting gap.

The selected PR #100 and PR #647 dependency closures were rebuilt as described
above. Other complete packages were not rebuilt; no independent Nanoda run is
claimed here. Updated claim/statement checks are recorded in
`research/jsp404-prior-work-20261005.md`. This list is not an exhaustive priority
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
