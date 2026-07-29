import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure HPSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  innerProduct : carrier → carrier → ℝ
  completeness : Prop
  separability : Prop

structure HPAdmittedObject where
  space : HPSpace
  boundedLinearForm : Prop
  rieszRepresentation : Prop
  conclusion : rieszRepresentation

structure HPEndgameState where
  object : HPAdmittedObject

def HPWitnessClosed (O : HPAdmittedObject) : Prop :=
  O.rieszRepresentation

end HPSpacesCanonicalLaneLean
end HautevilleHouse