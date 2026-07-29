import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean

structure AiryFunctionPackage where
  variable : Type u
  differentialEquation : Prop
  integralRepresentation : Prop
  asymptoticExpansion : Prop
  zerosStability : Prop

structure AiryFunctionEvidence (A : AiryFunctionPackage) where
  differentialEquationClosed : A.differentialEquation
  integralRepresentationClosed : A.integralRepresentation
  asymptoticExpansionClosed : A.asymptoticExpansion
  zerosStabilityClosed : A.zerosStability

def AiryFunctionClosed (A : AiryFunctionPackage) : Prop :=
  A.differentialEquation ∧ A.integralRepresentation ∧ A.asymptoticExpansion ∧ A.zerosStability

theorem airy_function_closed_from_evidence (A : AiryFunctionPackage) (E : AiryFunctionEvidence A) :
    AiryFunctionClosed A := by
  exact And.intro E.differentialEquationClosed
    (And.intro E.integralRepresentationClosed
      (And.intro E.asymptoticExpansionClosed E.zerosStabilityClosed))

end BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
