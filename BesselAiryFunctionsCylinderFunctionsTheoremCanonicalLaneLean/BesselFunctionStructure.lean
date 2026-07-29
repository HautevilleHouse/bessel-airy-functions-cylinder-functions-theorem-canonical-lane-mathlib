import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean

structure BesselFunctionPackage where
  order : Type u
  variable : Type v
  differentialEquation : Prop
  seriesExpansion : Prop
  recurrenceRelation : Prop
  asymptoticForm : Prop

structure BesselFunctionEvidence (B : BesselFunctionPackage) where
  differentialEquationClosed : B.differentialEquation
  seriesExpansionClosed : B.seriesExpansion
  recurrenceRelationClosed : B.recurrenceRelation
  asymptoticFormClosed : B.asymptoticForm

def BesselFunctionClosed (B : BesselFunctionPackage) : Prop :=
  B.differentialEquation ∧ B.seriesExpansion ∧ B.recurrenceRelation ∧ B.asymptoticForm

theorem bessel_function_closed_from_evidence (B : BesselFunctionPackage) (E : BesselFunctionEvidence B) :
    BesselFunctionClosed B := by
  exact And.intro E.differentialEquationClosed
    (And.intro E.seriesExpansionClosed
      (And.intro E.recurrenceRelationClosed E.asymptoticFormClosed))

end BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
