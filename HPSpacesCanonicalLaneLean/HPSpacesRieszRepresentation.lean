import HPSpacesCanonicalLaneLean.HPSpacesAdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure RieszRepresentationPackage (H : HPSpace) where
  boundedLinearFunctional : Type u
  representativeVector : H.carrier
  normEquality : Prop
  existenceUniqueness : Prop

structure RieszRepresentationEvidence (H : HPSpace) (R : RieszRepresentationPackage H) where
  normEqualityClosed : R.normEquality
  existenceUniquenessClosed : R.existenceUniqueness

def RieszRepresentationClosed (H : HPSpace) (R : RieszRepresentationPackage H) : Prop :=
  R.normEquality ∧ R.existenceUniqueness

theorem riesz_representation_closed_from_evidence (H : HPSpace) (R : RieszRepresentationPackage H)
    (E : RieszRepresentationEvidence H R) : RieszRepresentationClosed H R := by
  exact And.intro E.normEqualityClosed E.existenceUniquenessClosed

end HPSpacesCanonicalLaneLean
end HautevilleHouse