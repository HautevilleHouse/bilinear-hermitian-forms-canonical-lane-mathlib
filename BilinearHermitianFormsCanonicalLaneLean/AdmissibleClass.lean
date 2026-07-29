import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Matrix.Basic

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

structure HermitianFormData where
  matrix : Matrix ℂ ℂ ℂ
  conjugateTranspose : Matrix ℂ ℂ ℂ
  isHermitian : Prop

default_instance : Inhabited HermitianFormData := ⟨{
  matrix := 0,
  conjugateTranspose := 0,
  isHermitian := True
}⟩

structure AdmissibleClass where
  object : HermitianFormData
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse
