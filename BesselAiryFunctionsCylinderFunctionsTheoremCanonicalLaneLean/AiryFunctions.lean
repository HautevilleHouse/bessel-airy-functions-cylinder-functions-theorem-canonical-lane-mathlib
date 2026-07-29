import HautevilleHouse.BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean.BesselFunctions

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean

structure AiryFunctionsPackage where
  solutionType : Type u
  differentialEquation : Prop
  asymptoticBehavior : Prop
  relationToBessel : Prop

structure AiryFunctionsEvidence (A : AiryFunctionsPackage) where
  differentialEquationClosed : A.differentialEquation
  asymptoticBehaviorClosed : A.asymptoticBehavior
  relationToBesselClosed : A.relationToBessel

def AiryFunctionsClosed (A : AiryFunctionsPackage) : Prop :=
  A.differentialEquation ∧ A.asymptoticBehavior ∧ A.relationToBessel

theorem airy_functions_closed_from_evidence (A : AiryFunctionsPackage)
    (E : AiryFunctionsEvidence A) : AiryFunctionsClosed A := by
  exact And.intro E.differentialEquationClosed
    (And.intro E.asymptoticBehaviorClosed E.relationToBesselClosed)

end BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean
end HautevilleHouse