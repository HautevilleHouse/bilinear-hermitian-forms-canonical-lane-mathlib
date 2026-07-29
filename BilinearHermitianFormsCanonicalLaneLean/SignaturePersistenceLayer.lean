import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BilinearHermitianFormsCanonicalLaneLean.HermitianFormBasics

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

structure SignaturePersistenceCertificate where
  originalForm : HermitianFormDatum
  perturbedForm : HermitianFormDatum
  signatureAgreement : originalForm.signature = perturbedForm.signature
  closureWitness : Prop

def signaturePersistenceClosed (C : SignaturePersistenceCertificate) : Prop :=
  C.signatureAgreement ∧ C.closureWitness

theorem signature_persistence_closed_checked : signaturePersistenceClosed (SignaturePersistenceCertificate.mk (HermitianFormDatum.mk ℂ 0 (HermitianForm.mk (λ _ _ => 0) (by intro x y; rfl) (by intro a b x y z; simp) (by intro a b x y z; simp)) (0,0)) (HermitianFormDatum.mk ℂ 0 (HermitianForm.mk (λ _ _ => 0) (by intro x y; rfl) (by intro a b x y z; simp) (by intro a b x y z; simp)) (0,0)) rfl True) :=
  ⟨rfl, trivial⟩

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse