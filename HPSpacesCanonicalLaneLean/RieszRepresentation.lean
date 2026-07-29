import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure RieszRepresentationPackage (H : HarmonicProjectionPackage) where
  dualSpace : Type u
  representationMap : dualSpace → (H.domain → ℝ)
  isometric : Prop
  surjective : Prop
  continuous : Prop

structure RieszRepresentationEvidence {H : HarmonicProjectionPackage}
    (R : RieszRepresentationPackage H) where
  isometricClosed : R.isometric
  surjectiveClosed : R.surjective
  continuousClosed : R.continuous

def RieszRepresentationClosed {H : HarmonicProjectionPackage}
    (R : RieszRepresentationPackage H) : Prop :=
  R.isometric ∧ R.surjective ∧ R.continuous

theorem riesz_representation_closed_from_evidence {H : HarmonicProjectionPackage}
    (R : RieszRepresentationPackage H) (E : RieszRepresentationEvidence R) :
    RieszRepresentationClosed R := by
  exact And.intro E.isometricClosed (And.intro E.surjectiveClosed E.continuousClosed)

end HPSpacesCanonicalLaneLean
end HautevilleHouse