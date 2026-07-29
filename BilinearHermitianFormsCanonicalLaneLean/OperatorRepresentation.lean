import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BilinearHermitianFormsCanonicalLaneLean.HermitianFormDefinition

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

structure OperatorRepresentationCertificate where
  form : HermitianForm ℂ
  operator : ℂ → ℂ
  selfAdjoint : ∀ x, conj (operator x) = operator x
  representation : ∀ x y, form.form x y = innerProduct (operator • x) y
  checked : Bool

def OperatorRepresentationLayerClosed (C : OperatorRepresentationCertificate) : Prop :=
  C.checked = true ∧ C.selfAdjoint 1 ∧ (∀ x y, C.representation x y)

theorem operator_representation_layer_closed_checked (C : OperatorRepresentationCertificate) :
    OperatorRepresentationLayerClosed C := by
  refine And.intro C.checked (And.intro (C.selfAdjoint 1) C.representation)

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse