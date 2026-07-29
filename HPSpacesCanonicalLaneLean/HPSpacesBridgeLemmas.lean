import HPSpacesCanonicalLaneLean.HPSpacesAdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HPWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HPSpacesCanonicalLaneLean
end HautevilleHouse