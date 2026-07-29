import HPSpacesCanonicalLaneLean.HPSpacesAdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure BoundedOperator (H₁ H₂ : HPSpace) where
  map : H₁.carrier → H₂.carrier
  linearity : Prop
  boundedness : Prop

structure OperatorAlgebraPackage (H : HPSpace) where
  identity : BoundedOperator H H
  composition : Prop
  adjoint : BoundedOperator H H → BoundedOperator H H
  CstarProperty : Prop

structure OperatorAlgebraEvidence (H : HPSpace) (A : OperatorAlgebraPackage H) where
  compositionClosed : A.composition
  CstarPropertyClosed : A.CstarProperty

def OperatorAlgebraClosed (H : HPSpace) (A : OperatorAlgebraPackage H) : Prop :=
  A.composition ∧ A.CstarProperty

theorem operator_algebra_closed_from_evidence (H : HPSpace) (A : OperatorAlgebraPackage H)
    (E : OperatorAlgebraEvidence H A) : OperatorAlgebraClosed H A := by
  exact And.intro E.compositionClosed E.CstarPropertyClosed

end HPSpacesCanonicalLaneLean
end HautevilleHouse