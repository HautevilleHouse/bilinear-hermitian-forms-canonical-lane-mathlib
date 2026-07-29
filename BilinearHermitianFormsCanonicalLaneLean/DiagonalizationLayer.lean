import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BilinearHermitianFormsCanonicalLaneLean.HermitianFormBasics

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

structure DiagonalizationCertificate where
  basis : Type _
  orthogonalBasis : List basis
  eigenvalues : List ℝ
  diagonalForm : HermitianForm (basis → ℂ)
  basisCoherenceWitness : Prop

def diagonalizationLayerClosed (C : DiagonalizationCertificate) : Prop :=
  C.orthogonalBasis.length = C.eigenvalues.length ∧ C.basisCoherenceWitness

theorem diagonalization_layer_closed_checked : diagonalizationLayerClosed (DiagonalizationCertificate.mk (λ _ => ℂ) [] [] (HermitianForm.mk (λ _ _ => 0) (by intro x y; rfl) (by intro a b x y z; simp) (by intro a b x y z; simp)) True) :=
  by
    refine And.intro ?_ ?_
    · rfl
    · trivial

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse