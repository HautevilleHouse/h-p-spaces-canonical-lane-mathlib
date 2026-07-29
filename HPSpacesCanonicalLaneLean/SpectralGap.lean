import HPSpacesCanonicalLaneLean.HPStructure

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

def spectralGap (X : Type) [TopologicalSpace X] (H : HPSpace X) : ℚ := 0

theorem spectral_gap_positive (X : Type) [TopologicalSpace X] (H : HPSpace X) (h : spectralGap X H > 0) :
  H.norm = 0 := by
  sorry

end HPSpacesCanonicalLaneLean
end HautevilleHouse