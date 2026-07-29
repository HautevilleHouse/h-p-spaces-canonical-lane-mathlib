import canonicalLaneMathlib.AdmissibleClass
import mathlib.complex.basic

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure HPSpace (X : Type) [TopologicalSpace X] where
  norm : X → ℝ
  inner : X → X → ℂ
  positiveDefinite : ∀ x : X, inner x x ≥ 0
  cauchySchwarz : ∀ x y : X, |inner x y|^2 ≤ (norm x)^2 * (norm y)^2

theorem hp_space_self_adjoint (X : Type) [TopologicalSpace X] (H : HPSpace X) :
  ∀ x y : X, H.inner x y = Complex.conj (H.inner y x) := by
  intro x y
  sorry

end HPSpacesCanonicalLaneLean
end HautevilleHouse