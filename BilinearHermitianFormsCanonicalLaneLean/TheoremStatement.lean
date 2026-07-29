import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BilinearHermitianFormsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  hermianFormClass : String
  classicalBoundary : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "BilinearHermitianFormsCanonicalLaneLean",
  theoremName := "Hermitian Form Classification",
  hermianFormClass := "Admissible non-degenerate Hermitian forms with zero signature",
  classicalBoundary := "Classical classification of Hermitian forms over ℝ",
  carriedRemainder := "Unrestricted classical classification remains outside the admitted lane"
}

def ClassicalSourceBoundaryCarried : Prop :=
  sourceTheoremStatement.sourceKey = "BilinearHermitianFormsCanonicalLaneLean" ∧
  sourceTheoremStatement.carriedRemainder = "Unrestricted classical classification remains outside the admitted lane"

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried := by
  exact And.intro rfl rfl

end BilinearHermitianFormsCanonicalLaneLean
end HautevilleHouse