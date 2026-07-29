import HPSpacesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

def gateClosed (H : HPSpace) (endpointSatisfied : Prop) (remainderRecorded : Prop) : Prop :=
  endpointSatisfied ∨ remainderRecorded

theorem gate_from_admissible_class (H : HPSpace) (endpointSatisfied : Prop) (remainderRecorded : Prop) (gateWitness : endpointSatisfied ∨ remainderRecorded) : gateClosed H endpointSatisfied remainderRecorded := by
  exact gateWitness

end HPSpacesCanonicalLaneLean
end HautevilleHouse