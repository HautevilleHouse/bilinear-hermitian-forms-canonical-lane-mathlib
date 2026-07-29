import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BilinearHermitianFormsCanonicalLaneLean.HermitianFormBasics

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

structure AdmissibleHermitianObject where
  formDatum : HermitianFormDatum
  signaturePreserved : Prop
  diagonalizationWitness : Prop

structure AdmissibleHermitianClass where
  object : AdmissibleHermitianObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleHermitianClass) : Prop :=
  A.object.signaturePreserved ∧ A.object.diagonalizationWitness

theorem bridge_from_admissible_class (A : AdmissibleHermitianClass) : bridgeClosed A :=
  ⟨A.object.signaturePreserved, A.object.diagonalizationWitness⟩

def gateClosed (A : AdmissibleHermitianClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleHermitianClass) : gateClosed A :=
  A.gateWitness

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse