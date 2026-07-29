import .AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean

structure BesselFunctionData where
  alpha : ℝ
  recurrenceRelation : Prop
  seriesExpansion : Prop
  wronskian : Prop

structure BesselAsymptoticEvidence (B : BesselFunctionData) where
  recurrenceRelationClosed : B.recurrenceRelation
  seriesExpansionClosed : B.seriesExpansion
  wronskianClosed : B.wronskian

def BesselFunctionClosed (B : BesselFunctionData) : Prop :=
  B.recurrenceRelation ∧ B.seriesExpansion ∧ B.wronskian

theorem bessel_function_closed_from_evidence (B : BesselFunctionData) (E : BesselAsymptoticEvidence B) :
    BesselFunctionClosed B := by
  exact And.intro E.recurrenceRelationClosed (And.intro E.seriesExpansionClosed E.wronskianClosed)

end BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
