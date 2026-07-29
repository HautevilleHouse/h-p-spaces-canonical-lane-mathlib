import HPSpacesCanonicalLaneLean.HPSpacesOperatorTheory

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure SpectralTheoremPackage (H : HPSpace) (A : BoundedOperator H H) where
  spectrum : Set ℝ
  spectralDecomposition : Prop
  functionalCalculus : Prop
  compactCase : Prop

structure SpectralTheoremEvidence (H : HPSpace) (A : BoundedOperator H H) (S : SpectralTheoremPackage H A) where
  spectralDecompositionClosed : S.spectralDecomposition
  functionalCalculusClosed : S.functionalCalculus
  compactCaseClosed : S.compactCase

def SpectralTheoremClosed (H : HPSpace) (A : BoundedOperator H H) (S : SpectralTheoremPackage H A) : Prop :=
  S.spectralDecomposition ∧ S.functionalCalculus ∧ S.compactCase

theorem spectral_theorem_closed_from_evidence (H : HPSpace) (A : BoundedOperator H H)
    (S : SpectralTheoremPackage H A) (E : SpectralTheoremEvidence H A S) :
    SpectralTheoremClosed H A S := by
  exact And.intro E.spectralDecompositionClosed (And.intro E.functionalCalculusClosed E.compactCaseClosed)

end HPSpacesCanonicalLaneLean
end HautevilleHouse