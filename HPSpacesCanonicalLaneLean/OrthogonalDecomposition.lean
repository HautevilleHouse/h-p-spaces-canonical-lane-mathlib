import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure OrthogonalDecompositionPackage (H : HarmonicProjectionPackage) where
  subspace : Set H.domain
  orthogonalComplement : Set H.domain
  directSum : Prop
  projectionOnto : (H.domain → ℝ) → (H.domain → ℝ)
  projectionOntoOrthogonal : (H.domain → ℝ) → (H.domain → ℝ)

structure OrthogonalDecompositionEvidence {H : HarmonicProjectionPackage}
    (O : OrthogonalDecompositionPackage H) where
  directSumClosed : O.directSum

def OrthogonalDecompositionClosed {H : HarmonicProjectionPackage}
    (O : OrthogonalDecompositionPackage H) : Prop :=
  O.directSum

theorem orthogonal_decomposition_closed_from_evidence {H : HarmonicProjectionPackage}
    (O : OrthogonalDecompositionPackage H) (E : OrthogonalDecompositionEvidence O) :
    OrthogonalDecompositionClosed O := by
  exact E.directSumClosed

end HPSpacesCanonicalLaneLean
end HautevilleHouse