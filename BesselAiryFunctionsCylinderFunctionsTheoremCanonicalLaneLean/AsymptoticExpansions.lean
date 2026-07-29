import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean

structure AsymptoticExpansionsPackage where
  besselAsymptotics : Prop
  airyAsymptotics : Prop
  hankelAsymptotics : Prop
  stokesPhenomenon : Prop
  connectionFormulas : Prop

structure AsymptoticExpansionsEvidence (A : AsymptoticExpansionsPackage) where
  besselAsymptoticsClosed : A.besselAsymptotics
  airyAsymptoticsClosed : A.airyAsymptotics
  hankelAsymptoticsClosed : A.hankelAsymptotics
  stokesPhenomenonClosed : A.stokesPhenomenon
  connectionFormulasClosed : A.connectionFormulas

def AsymptoticExpansionsClosed (A : AsymptoticExpansionsPackage) : Prop :=
  A.besselAsymptotics ∧ A.airyAsymptotics ∧ A.hankelAsymptotics ∧ A.stokesPhenomenon ∧ A.connectionFormulas

theorem asymptotic_expansions_closed_from_evidence (A : AsymptoticExpansionsPackage) (E : AsymptoticExpansionsEvidence A) : AsymptoticExpansionsClosed A := by
  exact And.intro E.besselAsymptoticsClosed (And.intro E.airyAsymptoticsClosed (And.intro E.hankelAsymptoticsClosed (And.intro E.stokesPhenomenonClosed E.connectionFormulasClosed)))

end BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean
end HautevilleHouse