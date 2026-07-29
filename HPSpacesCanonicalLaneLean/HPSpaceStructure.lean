import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure HPSpace where
  carrier : Type
  innerProduct : carrier → carrier → ℂ
  completeness : Prop
  nondegeneracy : Prop
  posDefinite : Prop

structure HPSpaceEvidence (H : HPSpace) where
  completenessClosed : H.completeness
  nondegeneracyClosed : H.nondegeneracy
  posDefiniteClosed : H.posDefinite

def HPSpaceClosed (H : HPSpace) : Prop :=
  H.completeness ∧ H.nondegeneracy ∧ H.posDefinite

theorem hp_space_closed_from_evidence (H : HPSpace) (E : HPSpaceEvidence H) : HPSpaceClosed H := by
  exact And.intro E.completenessClosed (And.intro E.nondegeneracyClosed E.posDefiniteClosed)

end HPSpacesCanonicalLaneLean
end HautevilleHouse