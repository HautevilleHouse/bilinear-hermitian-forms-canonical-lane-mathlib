import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Complex.Basic
import Mathlib.LinearAlgebra.Basic

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

structure HermitianForm (V : Type _) [AddCommGroup V] [Module ℂ V] where
  form : V → V → ℂ
  sesquilinear : ∀ x y, form x y = form y x
  linearInFirst : ∀ a b x y, form (a • x + b • y) z = a • form x z + b • form y z
  conjugateLinearInSecond : ∀ a b x y, form x (a • y + b • z) = conj a • form x y + conj b • form x z

structure HermitianFormDatum where
  vectorSpace : Type _
  dim : Nat
  hermitianForm : HermitianForm vectorSpace
  signature : ℤ × ℤ

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse