import HautevilleHouse.BilinearHermitianFormsCanonicalLaneLean.HermitianBridgeGateLemmas

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

def ConstrainedHermitianClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hermitian_endgame (A : AdmissibleClass) :
    ConstrainedHermitianClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse
