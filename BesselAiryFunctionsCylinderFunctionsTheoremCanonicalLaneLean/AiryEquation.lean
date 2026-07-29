import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean

structure AiryEquationPackage where
  airyDifferentialEquation : Prop
  airyFunctionAi : Type u
  airyFunctionBi : Type v
  asymptoticBehavior : Prop
  integralRepresentations : Prop

structure AiryEquationEvidence (A : AiryEquationPackage) where
  airyDifferentialEquationClosed : A.airyDifferentialEquation
  asymptoticBehaviorClosed : A.asymptoticBehavior
  integralRepresentationsClosed : A.integralRepresentations

def AiryEquationClosed (A : AiryEquationPackage) : Prop :=
  A.airyDifferentialEquation ∧ A.asymptoticBehavior ∧ A.integralRepresentations

theorem airy_equation_closed_from_evidence (A : AiryEquationPackage) (E : AiryEquationEvidence A) : AiryEquationClosed A := by
  exact And.intro E.airyDifferentialEquationClosed (And.intro E.asymptoticBehaviorClosed E.integralRepresentationsClosed)

end BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean
end HautevilleHouse