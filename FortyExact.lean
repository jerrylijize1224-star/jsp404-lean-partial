import Prize.JSP404.Sector22Windows
import Prize.JSP404.GeneralAngleBounds
import Prize.JSP404.EdgeDirectionLowerBound
import Prize.JSP404.Sharpness

/-! The sharp 40-point value in Sendov's first band after 32. -/
namespace Prize.JSP404
open Sector22

theorem Sector22.Model.card_le_thirtynine {V : Type*} [Fintype V] (M : Model V) :
    Fintype.card V ≤ 39 := by
  classical
  let A (u : V) := ∃ r, M.Fits u (0,r)
  let B (u : V) := ∃ m, M.Fits u (middle m)
  let rest := Finset.univ.filter (fun u => ¬ A u)
  have ha := M.arc_card (Finset.univ.filter A) (fun u h => (Finset.mem_filter.mp h).2)
  have hb := M.middle_card (rest.filter B) (fun u h => (Finset.mem_filter.mp h).2)
  have hc := M.star_card (rest.filter (fun u => ¬ B u)) (by
    intro u hu
    obtain ⟨h₁,h₂⟩ := Finset.mem_filter.mp hu
    have h₀ : ¬ A u := (Finset.mem_filter.mp h₁).2
    exact ((M.classify u).resolve_left h₀).resolve_left h₂)
  have h₁ := Finset.card_filter_add_card_filter_not (s := Finset.univ) A
  have h₂ := Finset.card_filter_add_card_filter_not (s := rest) B
  change (Finset.univ.filter A).card + rest.card = Fintype.card V at h₁
  omega

theorem guaranteedAngle_nine_pi_elevenths_of_forty {N : ℕ} (hn : 40 ≤ N) :
    GuaranteedAngle N (9 * Real.pi / 11) := by
  classical
  intro s hs
  let e := Complex.orthonormalBasisOneI.repr.symm
  let p (u : s) : ℂ := e (u : Plane)
  have hp : Function.Injective p := e.injective.comp Subtype.val_injective
  by_contra h
  have ha : ∀ u v w : s, u ≠ v → u ≠ w → v ≠ w →
      EuclideanGeometry.angle (p v) (p u) (p w) < 9 * Real.pi / 11 := by
    intro u v w huv huw hvw
    have hh : EuclideanGeometry.angle (v : Plane) (u : Plane) (w : Plane) < 9 * Real.pi / 11 := by
      apply lt_of_not_ge
      intro hx
      exact h ⟨v,v.property,u,u.property,w,w.property,
        (fun h => huv (Subtype.ext h.symm)),(fun h => hvw (Subtype.ext h)),
        (fun h => huw (Subtype.ext h)),hx⟩
    change InnerProductGeometry.angle (e (v : Plane)-e (u : Plane)) (e (w : Plane)-e (u : Plane)) < _
    rw [← map_sub, ← map_sub]
    change InnerProductGeometry.angle (e.toLinearIsometry ((v : Plane)-u)) (e.toLinearIsometry ((w : Plane)-u)) < _
    rwa [e.toLinearIsometry.angle_map]
  obtain ⟨M⟩ := model_of_complex p hp ha
  have bound := M.card_le_thirtynine
  simp only [Fintype.card_coe,hs] at bound
  omega

theorem forty_isSharpBound : IsSharpBound 40 (9 * Real.pi / 11) := by
  apply isSharpBound_of_approximation (by positivity) (by linarith [Real.pi_pos])
    (guaranteedAngle_nine_pi_elevenths_of_forty le_rfl)
  intro ε hε
  obtain ⟨s, hs, hb⟩ := exists_firstBand_counterexample 3 hε
  refine ⟨s, by norm_num at hs; omega, ?_⟩
  have he : Real.pi - 2 * firstBandStep 3 + ε = 9 * Real.pi / 11 + ε := by
    norm_num [firstBandStep]
    ring
  rwa [he] at hb

theorem alpha_forty : alpha 40 = 9 * Real.pi / 11 := forty_isSharpBound.alpha_eq

/-- The existing edge estimate and first-band construction specialize to the
seven remaining cardinalities in this band. -/
theorem thirtythree_thirtynine_bounds {N : ℕ} (h₁ : 33 ≤ N) (h₂ : N ≤ 39) :
    (2117 / 2645 : ℝ) * Real.pi ≤ alpha N ∧ alpha N ≤ 9 * Real.pi / 11 := by
  have hlow := edge_alpha_lower_uniform (k := 5) (N := N) (by decide) (by norm_num; omega)
  have hupp := sendov_low_band_upper (k := 5) (N := N) (by decide)
    (by norm_num; omega) (by norm_num; omega)
  norm_num [edgeAngle, representativeAngle, Nat.choose] at hlow
  norm_num at hupp
  exact ⟨by linarith, by linarith⟩

/-- The 40-point proof also raises the lower bound throughout the next band. -/
theorem fortyone_sixtytwo_bounds {N : ℕ} (h₁ : 41 ≤ N) (h₂ : N ≤ 62) :
    9 * Real.pi / 11 ≤ alpha N ∧ alpha N ≤ 5 * Real.pi / 6 := by
  have hlow := alpha_mono (m := 40) (n := N) (by decide) (by omega)
  rw [alpha_forty] at hlow
  have hupp := dyadic_alpha_upper (n := 6) (m := N) (by decide) (by omega) (by norm_num; omega)
  norm_num at hupp
  exact ⟨hlow, by linarith⟩

end Prize.JSP404
