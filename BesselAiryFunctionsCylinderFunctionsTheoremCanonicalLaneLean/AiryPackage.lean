import .AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean

structure AiryFunctionData where
  differentialEquation : Prop
  asymptoticExpansion : Prop
  connectionRelation : Prop

structure AiryAsymptoticEvidence (A : AiryFunctionData) where
  differentialEquationClosed : A.differentialEquation
  asymptoticExpansionClosed : A.asymptoticExpansion
  connectionRelationClosed : A.connectionRelation

def AiryFunctionClosed (A : AiryFunctionData) : Prop :=
  A.differentialEquation ∧ A.asymptoticExpansion ∧ A.connectionRelation

theorem airy_function_closed_from_evidence (A : AiryFunctionData) (E : AiryAsymptoticEvidence A) :
    AiryFunctionClosed A := by
  exact And.intro E.differentialEquationClosed (And.intro E.asymptoticExpansionClosed E.connectionRelationClosed)

end BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
