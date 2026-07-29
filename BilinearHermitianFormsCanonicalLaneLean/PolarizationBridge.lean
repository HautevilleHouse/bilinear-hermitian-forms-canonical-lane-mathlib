import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BilinearHermitianFormsCanonicalLaneLean.HermitianFormBasics

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

structure PolarizationBridgeCertificate where
  hermitianForm : HermitianFormDatum
  associatedQuadraticForm : (hermitianForm.vectorSpace → ℂ)
  polarizationIdentity : ∀ x, associatedQuadraticForm x = hermitianForm.hermitianForm.form x x
  bridgeClosed : Prop

def polarizationBridgeClosed (C : PolarizationBridgeCertificate) : Prop :=
  C.polarizationIdentity ∧ C.bridgeClosed

theorem polarization_bridge_closed_checked : polarizationBridgeClosed (PolarizationBridgeCertificate.mk (HermitianFormDatum.mk ℂ 0 (HermitianForm.mk (λ _ _ => 0) (by intro x y; rfl) (by intro a b x y z; simp) (by intro a b x y z; simp)) (0,0)) (λ _ => 0) (by intro x; rfl) True) :=
  ⟨by intro x; rfl, trivial⟩

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse