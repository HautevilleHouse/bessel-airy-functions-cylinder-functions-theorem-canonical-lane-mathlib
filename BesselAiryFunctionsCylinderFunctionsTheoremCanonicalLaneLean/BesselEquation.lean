import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean

structure BesselEquationPackage where
  order : ℝ
  besselDifferentialEquation : Prop
  besselFunctionFirstKind : Type u
  besselFunctionSecondKind : Type v
  recurrenceRelations : Prop
  generatingFunction : Prop

structure BesselEquationEvidence (B : BesselEquationPackage) where
  besselDifferentialEquationClosed : B.besselDifferentialEquation
  recurrenceRelationsClosed : B.recurrenceRelations
  generatingFunctionClosed : B.generatingFunction

def BesselEquationClosed (B : BesselEquationPackage) : Prop :=
  B.besselDifferentialEquation ∧ B.recurrenceRelations ∧ B.generatingFunction

theorem bessel_equation_closed_from_evidence (B : BesselEquationPackage) (E : BesselEquationEvidence B) : BesselEquationClosed B := by
  exact And.intro E.besselDifferentialEquationClosed (And.intro E.recurrenceRelationsClosed E.generatingFunctionClosed)

end BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean
end HautevilleHouse