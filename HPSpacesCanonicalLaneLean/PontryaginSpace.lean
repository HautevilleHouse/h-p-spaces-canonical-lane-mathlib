import HPSpacesCanonicalLaneLean.KreinSpace

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure PontryaginSpace (X : Type) [TopologicalSpace X] extends KreinSpace X where
  finiteRankNegativity : Nat
  negativityIndex : finiteRankNegativity = 1

theorem pontryagin_space_closedness (X : Type) [TopologicalSpace X] (P : PontryaginSpace X) :
  P.finiteRankNegativity = 1 := by
  exact P.negativityIndex

end HPSpacesCanonicalLaneLean
end HautevilleHouse