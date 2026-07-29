import HPSpacesCanonicalLaneLean.HPStructure

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure KreinSpace (X : Type) [TopologicalSpace X] extends HPSpace X where
  fundamentalSymmetry : X → X
  fundamentalSymmetryInvolutive : fundamentalSymmetry ∘ fundamentalSymmetry = id
  indefiniteInner : X → X → ℂ

theorem krein_space_decomposition (X : Type) [TopologicalSpace X] (K : KreinSpace X) :
  X ≃ (K.fundamentalSymmetry).fixedPoints × (K.fundamentalSymmetry).negFixedPoints := by
  sorry

end HPSpacesCanonicalLaneLean
end HautevilleHouse