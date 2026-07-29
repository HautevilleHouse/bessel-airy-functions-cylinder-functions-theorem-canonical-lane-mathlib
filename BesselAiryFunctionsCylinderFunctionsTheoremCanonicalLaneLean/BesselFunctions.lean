import HautevilleHouse.BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean

structure BesselFunctionsPackage where
  order : Type u
  argumentDomain : Type v
  besselEquationSatisfied : Prop
  recurrenceRelations : Prop
  specialValues : Prop

structure BesselFunctionsEvidence (B : BesselFunctionsPackage) where
  besselEquationSatisfiedClosed : B.besselEquationSatisfied
  recurrenceRelationsClosed : B.recurrenceRelations
  specialValuesClosed : B.specialValues

def BesselFunctionsClosed (B : BesselFunctionsPackage) : Prop :=
  B.besselEquationSatisfied ∧ B.recurrenceRelations ∧ B.specialValues

theorem bessel_functions_closed_from_evidence (B : BesselFunctionsPackage)
    (E : BesselFunctionsEvidence B) : BesselFunctionsClosed B := by
  exact And.intro E.besselEquationSatisfiedClosed
    (And.intro E.recurrenceRelationsClosed E.specialValuesClosed)

end BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean
end HautevilleHouse