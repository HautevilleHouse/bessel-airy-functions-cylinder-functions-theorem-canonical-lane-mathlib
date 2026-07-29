import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean

structure BesselAiryCylinderObject where
  besselPackage : BesselEquationPackage
  airyPackage : AiryEquationPackage
  cylinderPackage : CylinderFunctionsPackage
  asymptoticPackage : AsymptoticExpansionsPackage
  closureSatisfied : Prop
  closureSatisfiedTerm : closureSatisfied

structure AdmissibleClass where
  object : BesselAiryCylinderObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.closureSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.closureSatisfiedTerm

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean
end HautevilleHouse