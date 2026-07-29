import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HPSpacesCanonicalLaneLean.HPSpaceStructure

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure SubspaceProjection {H : HPSpace} (M : Subtype (λ x : H.carrier => True)) where
  projectionMap : H.carrier → M
  linearity : Prop
  idempotence : Prop
  orthogonal : Prop

structure SubspaceProjectionEvidence {H : HPSpace} {M : Subtype (λ x : H.carrier => True)} (P : SubspaceProjection M) where
  linearityClosed : P.linearity
  idempotenceClosed : P.idempotence
  orthogonalClosed : P.orthogonal

def SubspaceProjectionClosed {H : HPSpace} {M : Subtype (λ x : H.carrier => True)} (P : SubspaceProjection M) : Prop :=
  P.linearity ∧ P.idempotence ∧ P.orthogonal

theorem subspace_projection_closed_from_evidence {H : HPSpace} {M : Subtype (λ x : H.carrier => True)} (P : SubspaceProjection M) (E : SubspaceProjectionEvidence P) : SubspaceProjectionClosed P := by
  exact And.intro E.linearityClosed (And.intro E.idempotenceClosed E.orthogonalClosed)

end HPSpacesCanonicalLaneLean
end HautevilleHouse