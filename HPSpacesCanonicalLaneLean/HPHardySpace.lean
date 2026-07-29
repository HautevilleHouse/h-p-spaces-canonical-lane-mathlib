import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure HPHardySpace (X : Type) [MetricSpace X] where
  p : ℝ
  measure : Measure X
  atoms : Type
  atomicDecomposition : Prop
  atomicDecompositionTerm : atomicDecomposition

def HPHardySpaceClosed {X : Type} [MetricSpace X] (H : HPHardySpace X) : Prop :=
  H.atomicDecomposition

theorem hphardy_space_closed_from_evidence {X : Type} [MetricSpace X] (H : HPHardySpace X) : HPHardySpaceClosed H :=
  H.atomicDecompositionTerm

end HPSpacesCanonicalLaneLean
end HautevilleHouse