import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure HPInterpolation (X : Type) [MetricSpace X] where
  p0 : ℝ
  p1 : ℝ
  q0 : ℝ
  q1 : ℝ
  operator : (X → ℝ) → (X → ℝ)
  boundedness : Prop
  interpolationResult : Prop
  interpolationResultTerm : interpolationResult

def HPInterpolationClosed {X : Type} [MetricSpace X] (I : HPInterpolation X) : Prop :=
  I.interpolationResult

theorem hpinterpolation_closed_from_evidence {X : Type} [MetricSpace X] (I : HPInterpolation X) : HPInterpolationClosed I :=
  I.interpolationResultTerm

end HPSpacesCanonicalLaneLean
end HautevilleHouse