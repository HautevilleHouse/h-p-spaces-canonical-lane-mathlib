import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HPSpacesCanonicalLaneLean.HPSpaceStructure

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure OperatorAlgebra (H : HPSpace) where
  boundedLinearOperators : Type
  addition : boundedLinearOperators → boundedLinearOperators → boundedLinearOperators
  multiplication : boundedLinearOperators → boundedLinearOperators → boundedLinearOperators
  involution : boundedLinearOperators → boundedLinearOperators
  norm : boundedLinearOperators → ℝ
  completeness : Prop
  submultiplicativity : Prop
  cStarIdentity : Prop

structure OperatorAlgebraEvidence (H : HPSpace) (A : OperatorAlgebra H) where
  completenessClosed : A.completeness
  submultiplicativityClosed : A.submultiplicativity
  cStarIdentityClosed : A.cStarIdentity

def OperatorAlgebraClosed (H : HPSpace) (A : OperatorAlgebra H) : Prop :=
  A.completeness ∧ A.submultiplicativity ∧ A.cStarIdentity

theorem operator_algebra_closed_from_evidence (H : HPSpace) (A : OperatorAlgebra H) (E : OperatorAlgebraEvidence H A) : OperatorAlgebraClosed H A := by
  exact And.intro E.completenessClosed (And.intro E.submultiplicativityClosed E.cStarIdentityClosed)

end HPSpacesCanonicalLaneLean
end HautevilleHouse