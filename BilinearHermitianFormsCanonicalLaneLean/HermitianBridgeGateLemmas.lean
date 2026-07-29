import HautevilleHouse.BilinearHermitianFormsCanonicalLaneLean.HermitianAdmissibleClass

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.spectralTheoremCheck (And.intro A.object.eigenbasisCheck (And.intro A.object.realEigenvaluesCheck A.object.nondegenerateCheck))

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse
