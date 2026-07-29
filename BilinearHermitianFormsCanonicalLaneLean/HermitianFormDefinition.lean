import canonicalLaneMathlib.AdmissibleClass
import Mathlib.LinearAlgebra.BilinearForm
import Mathlib.LinearAlgebra.Matrix

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

structure HermitianForm (V : Type*) [AddCommGroup V] [Module ℂ V] where
  form : V → V → ℂ
  conj_symm : ∀ x y, form y x = conj (form x y)
  sesq : SesquilinearForm ℂ V
  sesq_eq : ∀ x y, sesq x y = form x y

structure HermitianFormCertificate (V : Type*) [AddCommGroup V] [Module ℂ V] where
  form : HermitianForm V
  basis : Basis (Fin n) ℂ V
  gramMatrix : Matrix (Fin n) (Fin n) ℂ
  gramIsHermitian : gramMatrix = gramMatrixᴴ
  signature : ℕ × ℕ
  dimension : ℕ
  checked : Bool

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse