import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BilinearHermitianFormsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse
