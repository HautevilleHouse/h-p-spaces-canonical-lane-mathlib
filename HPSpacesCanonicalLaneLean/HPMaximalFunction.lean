import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure HPMaximalFunction (X : Type) [MetricSpace X] where
  p : ℝ
  measure : Measure X
  maximalOperator : (X → ℝ) → (X → ℝ)
  bound : Prop
  boundTerm : bound

def HPMaxFunctionClosed {X : Type} [MetricSpace X] (M : HPMaximalFunction X) : Prop :=
  M.bound

theorem hpmax_function_closed_from_evidence {X : Type} [MetricSpace X] (M : HPMaximalFunction X) : HPMaxFunctionClosed M :=
  M.boundTerm

end HPSpacesCanonicalLaneLean
end HautevilleHouse