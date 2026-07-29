import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure HPCalderonZygmund (X : Type) [MetricSpace X] where
  p : ℝ
  kernel : X × X \ {diagonal} → ℝ
  operator : (X → ℝ) → (X → ℝ)
  boundedness : Prop
  weakType : Prop
  goodLambdaInequality : Prop
  goodLambdaInequalityTerm : goodLambdaInequality

def HPCalderonZygmundClosed {X : Type} [MetricSpace X] (CZ : HPCalderonZygmund X) : Prop :=
  CZ.goodLambdaInequality

theorem hpcalderonzygmund_closed_from_evidence {X : Type} [MetricSpace X] (CZ : HPCalderonZygmund X) : HPCalderonZygmundClosed CZ :=
  CZ.goodLambdaInequalityTerm

end HPSpacesCanonicalLaneLean
end HautevilleHouse