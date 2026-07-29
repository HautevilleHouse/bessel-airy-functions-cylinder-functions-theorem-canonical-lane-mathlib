import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean

structure RecurrenceRelationsPackage where
  besselRecurrence : Prop
  hankelRecurrence : Prop
  modifiedBesselRecurrence : Prop
  neumannsFormula : Prop

structure RecurrenceRelationsEvidence (R : RecurrenceRelationsPackage) where
  besselRecurrenceClosed : R.besselRecurrence
  hankelRecurrenceClosed : R.hankelRecurrence
  modifiedBesselRecurrenceClosed : R.modifiedBesselRecurrence
  neumannsFormulaClosed : R.neumannsFormula

def RecurrenceRelationsClosed (R : RecurrenceRelationsPackage) : Prop :=
  R.besselRecurrence ∧ R.hankelRecurrence ∧ R.modifiedBesselRecurrence ∧ R.neumannsFormula

theorem recurrence_relations_closed_from_evidence (R : RecurrenceRelationsPackage)
    (E : RecurrenceRelationsEvidence R) : RecurrenceRelationsClosed R := by
  exact And.intro E.besselRecurrenceClosed
    (And.intro E.hankelRecurrenceClosed
      (And.intro E.modifiedBesselRecurrenceClosed E.neumannsFormulaClosed))

end BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean
end HautevilleHouse