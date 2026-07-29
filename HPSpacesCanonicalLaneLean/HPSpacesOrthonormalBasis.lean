import HPSpacesCanonicalLaneLean.HPSpacesAdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure OrthonormalBasisPackage (H : HPSpace) where
  basisSet : Set H.carrier
  orthonormality : Prop
  completeness : Prop
  separableExistence : Prop

structure OrthonormalBasisEvidence (H : HPSpace) (O : OrthonormalBasisPackage H) where
  orthonormalityClosed : O.orthonormality
  completenessClosed : O.completeness
  separableExistenceClosed : O.separableExistence

def OrthonormalBasisClosed (H : HPSpace) (O : OrthonormalBasisPackage H) : Prop :=
  O.orthonormality ∧ O.completeness ∧ O.separableExistence

theorem orthonormal_basis_closed_from_evidence (H : HPSpace) (O : OrthonormalBasisPackage H)
    (E : OrthonormalBasisEvidence H O) : OrthonormalBasisClosed H O := by
  exact And.intro E.orthonormalityClosed (And.intro E.completenessClosed E.separableExistenceClosed)

end HPSpacesCanonicalLaneLean
end HautevilleHouse