import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HPSpacesCanonicalLaneLean.OperatorAlgebra

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure SpectralTheorem (H : HPSpace) (A : OperatorAlgebra H) where
  normalOperator : A.boundedLinearOperators
  spectrum : Set ℂ
  spectralMeasure : Type
  functionalCalculus : Prop
  spectralDecomposition : Prop

structure SpectralTheoremEvidence (H : HPSpace) (A : OperatorAlgebra H) (S : SpectralTheorem H A) where
  functionalCalculusClosed : S.functionalCalculus
  spectralDecompositionClosed : S.spectralDecomposition

def SpectralTheoremClosed (H : HPSpace) (A : OperatorAlgebra H) (S : SpectralTheorem H A) : Prop :=
  S.functionalCalculus ∧ S.spectralDecomposition

theorem spectral_theorem_closed_from_evidence (H : HPSpace) (A : OperatorAlgebra H) (S : SpectralTheorem H A) (E : SpectralTheoremEvidence H A S) : SpectralTheoremClosed H A S := by
  exact And.intro E.functionalCalculusClosed E.spectralDecompositionClosed

end HPSpacesCanonicalLaneLean
end HautevilleHouse