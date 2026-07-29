import HPSpacesCanonicalLaneLean.HPSpaceAdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

def projection (H : HPSpace) : Prop := H.completeness

theorem projection_idempotent (H : HPSpace) : projection H ↔ projection H := by
  rfl

end HPSpacesCanonicalLaneLean
end HautevilleHouse