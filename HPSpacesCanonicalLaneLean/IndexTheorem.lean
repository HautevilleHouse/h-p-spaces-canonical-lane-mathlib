import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HPSpacesCanonicalLaneLean.FredholmOperator

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure IndexTheorem (H : HPSpace) where
  fredholmOperator : FredholmOperator H
  index : ℤ
  indexInvariance : Prop
  homotopyInvariance : Prop

structure IndexTheoremEvidence (H : HPSpace) (I : IndexTheorem H) where
  indexInvarianceClosed : I.indexInvariance
  homotopyInvarianceClosed : I.homotopyInvariance

def IndexTheoremClosed (H : HPSpace) (I : IndexTheorem H) : Prop :=
  I.indexInvariance ∧ I.homotopyInvariance

theorem index_theorem_closed_from_evidence (H : HPSpace) (I : IndexTheorem H) (E : IndexTheoremEvidence H I) : IndexTheoremClosed H I := by
  exact And.intro E.indexInvarianceClosed E.homotopyInvarianceClosed

end HPSpacesCanonicalLaneLean
end HautevilleHouse