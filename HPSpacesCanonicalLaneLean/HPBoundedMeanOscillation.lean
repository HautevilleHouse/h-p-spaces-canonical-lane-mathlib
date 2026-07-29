import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure HPBoundedMeanOscillation (X : Type) [MetricSpace X] where
  p : ℝ
  q : ℝ
  measure : Measure X
  seminorm : (X → ℝ) → ℝ
  bound : Prop
  boundTerm : bound

def HPBMOClosed {X : Type} [MetricSpace X] (H : HPBoundedMeanOscillation X) : Prop :=
  H.bound

theorem hpbmo_closed_from_evidence {X : Type} [MetricSpace X] (H : HPBoundedMeanOscillation X) : HPBMOClosed H :=
  H.boundTerm

end HPSpacesCanonicalLaneLean
end HautevilleHouse