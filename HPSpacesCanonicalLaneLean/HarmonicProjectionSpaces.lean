import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesCanonicalLaneLean

structure HarmonicProjectionPackage where
  domain : Type u
  harmonicProjection : (domain → ℝ) → (domain → ℝ)
  idempotent : Prop
  linear : Prop
  rangeClosed : Prop
  kernelClosed : Prop

structure HarmonicProjectionEvidence (H : HarmonicProjectionPackage) where
  idempotentClosed : H.idempotent
  linearClosed : H.linear
  rangeClosedClosed : H.rangeClosed
  kernelClosedClosed : H.kernelClosed

def HarmonicProjectionClosed (H : HarmonicProjectionPackage) : Prop :=
  H.idempotent ∧ H.linear ∧ H.rangeClosed ∧ H.kernelClosed

theorem harmonic_projection_closed_from_evidence (H : HarmonicProjectionPackage)
    (E : HarmonicProjectionEvidence H) : HarmonicProjectionClosed H := by
  exact And.intro E.idempotentClosed (And.intro E.linearClosed (And.intro E.rangeClosedClosed E.kernelClosedClosed))

end HPSpacesCanonicalLaneLean
end HautevilleHouse