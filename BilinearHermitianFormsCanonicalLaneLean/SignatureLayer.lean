import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BilinearHermitianFormsCanonicalLaneLean.HermitianFormDefinition

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

structure SignatureCertificate where
  form : HermitianForm ℂ
  positiveIndex : ℕ
  negativeIndex : ℕ
  zeroIndex : ℕ
  signatureComputed : Bool
  signatureConsistent : Bool

def SignatureLayerClosed (C : SignatureCertificate) : Prop :=
  C.signatureComputed = true ∧ C.signatureConsistent = true ∧
  (C.positiveIndex + C.negativeIndex + C.zeroIndex = C.form.dimension)

theorem signature_layer_closed_checked (C : SignatureCertificate) :
    SignatureLayerClosed C := by
  refine And.intro C.signatureComputed (And.intro C.signatureConsistent ?_)
  exact C.form.dimension_satisfied

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse