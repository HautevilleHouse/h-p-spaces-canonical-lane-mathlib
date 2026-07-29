import HPSpacesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

def bridgeClosed (H : HPSpace) : Prop := H.completeness

theorem bridge_from_admissible_class (H : HPSpace) : bridgeClosed H := by
  exact H.completeness

end HPSpacesCanonicalLaneLean
end HautevilleHouse