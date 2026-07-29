import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HPSpacesCanonicalLaneLean.HPSpaceStructure

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure AdmittedObject where
  space : HPSpace
  operatorAlgebra : OperatorAlgebra space
  spectralTheorem : SpectralTheorem space operatorAlgebra
  indexTheorem : IndexTheorem space

def HPSpacesWitnessClosed (O : AdmittedObject) : Prop :=
  HPSpaceClosed O.space ∧ OperatorAlgebraClosed O.space O.operatorAlgebra ∧ SpectralTheoremClosed O.space O.operatorAlgebra O.spectralTheorem ∧ IndexTheoremClosed O.space O.indexTheorem

end HPSpacesCanonicalLaneLean
end HautevilleHouse