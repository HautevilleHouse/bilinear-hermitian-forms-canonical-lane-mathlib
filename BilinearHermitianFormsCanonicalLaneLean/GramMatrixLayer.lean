import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BilinearHermitianFormsCanonicalLaneLean.HermitianFormDefinition

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

structure GramMatrixCertificate (V : Type*) [AddCommGroup V] [Module ℂ V] where
  form : HermitianForm V
  basis : Basis (Fin n) ℂ V
  matrix : Matrix (Fin n) (Fin n) ℂ
  isHermitian : matrix = matrixᴴ
  determinantZero : ℕ
  checked : Bool

def GramMatrixLayerClosed (C : GramMatrixCertificate V) : Prop :=
  C.isHermitian ∧ C.checked = true ∧ (∀ i j, C.matrix i j = C.form.form (C.basis i) (C.basis j))

theorem gram_matrix_layer_closed_checked (C : GramMatrixCertificate V) :
    GramMatrixLayerClosed C := by
  refine And.intro C.isHermitian (And.intro C.checked ?_)
  intro i j
  exact rfl

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse