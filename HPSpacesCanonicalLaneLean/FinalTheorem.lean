import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

def ConstrainedHpClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hp_endgame (A : AdmissibleClass) :
    ConstrainedHpClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HPSpacesCanonicalLaneLean
end HautevilleHouse