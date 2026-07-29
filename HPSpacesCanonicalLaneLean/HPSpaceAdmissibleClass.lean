import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure HPSpace where
  carrier : Type
  innerProduct : carrier → carrier → ℂ
  completeness : Prop

definition HPSpaceAdmittedObject (H : HPSpace) : Prop :=
  H.completeness

end HPSpacesCanonicalLaneLean
end HautevilleHouse