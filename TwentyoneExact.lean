import Prize.JSP404.ThreeArcSharedTwelve
import Prize.JSP404.EquallySpacedBinaryAxes

/-! The lower bound for twenty-one points combines one-arc capacity nine
with three-arc capacity eleven. The five-level binary construction supplies
the matching upper bound up to thirty-two points. -/
namespace Prize.JSP404
open ContinuousDirection

theorem card_le_twenty_of_plane_angles_four_pi_fifths
    {V : Type*} [Fintype V] (p : V → Plane) (hp : Function.Injective p)
    (hangle : ∀ u v w, u ≠ v → u ≠ w → v ≠ w →
      EuclideanGeometry.angle (p u) (p v) (p w) < 4 * Real.pi / 5) :
    Fintype.card V ≤ 20 := by
  obtain ⟨d, hd0, hd, ⟨M⟩⟩ :=
    exists_triangleCoverModel_of_plane_angles_lt_four_pi_fifths p hp hangle
  exact M.card_le_twenty (by linarith) hd

theorem guaranteedAngle_four_pi_fifths_of_twenty_one {N : ℕ} (hN : 21 ≤ N) :
    GuaranteedAngle N (4 * Real.pi / 5) := by
  intro s hs
  classical
  by_contra hn
  have hb : ∀ u v w : s, u ≠ v → u ≠ w → v ≠ w →
      EuclideanGeometry.angle (u : Plane) (v : Plane) (w : Plane) < 4 * Real.pi / 5 := by
    intro u v w huv huw hvw
    apply lt_of_not_ge
    intro ha
    apply hn
    exact ⟨u, u.property, v, v.property, w, w.property,
      (fun h => huv (Subtype.ext h)), (fun h => huw (Subtype.ext h)),
      (fun h => hvw (Subtype.ext h)), ha⟩
  have hc := card_le_twenty_of_plane_angles_four_pi_fifths
    (fun u : s => (u : Plane)) Subtype.val_injective hb
  simp only [Fintype.card_coe] at hc
  omega

theorem twentyone_thirtytwo_isSharpBound {N : ℕ} (hlo : 21 ≤ N) (hhi : N ≤ 32) :
    IsSharpBound N (4 * Real.pi / 5) := by
  refine ⟨by positivity, by linarith [Real.pi_pos],
    guaranteedAngle_four_pi_fifths_of_twenty_one hlo, ?_⟩
  intro b hb
  apply dyadic_not_guaranteed (n := 5) (by decide) (by norm_num; omega)
  norm_num
  linarith

theorem alpha_twenty_one : alpha 21 = 4 * Real.pi / 5 :=
  (twentyone_thirtytwo_isSharpBound (by decide) (by decide)).alpha_eq

end Prize.JSP404
