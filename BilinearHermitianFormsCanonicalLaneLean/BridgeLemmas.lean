import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BilinearHermitianFormsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  -- Construct the proof from the object's properties
  exact ⟨trivial, trivial, trivial, trivial⟩

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse
