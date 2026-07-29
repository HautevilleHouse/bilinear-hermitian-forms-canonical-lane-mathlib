import Mathlib.Data.Complex.Basic
import Mathlib.LinearAlgebra.Matrix.Hermitian

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

structure BilinearHermitianForm (V : Type) [AddCommGroup V] [Module ℂ V] where
  form : V → V → ℂ
  hermitian : ∀ x y, form x y = conj (form y x)
  sesquilinear : ∀ a b x y, form (a • x + b • y) = λ z => a • form x z + b • form y z

structure HermitianAdmittedObject where
  object : String
  hermitianForm : BilinearHermitianForm ℂ
  spectralTheoremCheck : Bool
  eigenbasisCheck : Bool
  realEigenvaluesCheck : Bool
  nondegenerateCheck : Bool

structure AdmissibleClass where
  object : HermitianAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse
