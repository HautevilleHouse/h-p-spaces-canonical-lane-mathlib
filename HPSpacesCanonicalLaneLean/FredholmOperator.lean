import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HPSpacesCanonicalLaneLean.HPSpaceStructure

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure FredholmOperator (H : HPSpace) where
  operator : H.carrier → H.carrier
  linearity : Prop
  boundedness : Prop
  finiteDimensionalKernel : Prop
  finiteDimensionalCokernel : Prop
  closedRange : Prop

structure FredholmOperatorEvidence (H : HPSpace) (F : FredholmOperator H) where
  linearityClosed : F.linearity
  boundednessClosed : F.boundedness
  finiteDimensionalKernelClosed : F.finiteDimensionalKernel
  finiteDimensionalCokernelClosed : F.finiteDimensionalCokernel
  closedRangeClosed : F.closedRange

def FredholmOperatorClosed (H : HPSpace) (F : FredholmOperator H) : Prop :=
  F.linearity ∧ F.boundedness ∧ F.finiteDimensionalKernel ∧ F.finiteDimensionalCokernel ∧ F.closedRange

theorem fredholm_operator_closed_from_evidence (H : HPSpace) (F : FredholmOperator H) (E : FredholmOperatorEvidence H F) : FredholmOperatorClosed H F := by
  exact And.intro E.linearityClosed (And.intro E.boundednessClosed (And.intro E.finiteDimensionalKernelClosed (And.intro E.finiteDimensionalCokernelClosed E.closedRangeClosed)))

end HPSpacesCanonicalLaneLean
end HautevilleHouse