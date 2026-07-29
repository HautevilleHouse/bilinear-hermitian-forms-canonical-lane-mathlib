import HautevilleHouse.BilinearHermitianFormsCanonicalLaneLean.HermitianMathlibObjects

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def NativeBridgeClosed (O : HermitianAdmittedObject) : Prop :=
  O.spectralTheoremCheck = true ∧
  O.eigenbasisCheck = true ∧
  O.realEigenvaluesCheck = true ∧
  O.nondegenerateCheck = true

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse
