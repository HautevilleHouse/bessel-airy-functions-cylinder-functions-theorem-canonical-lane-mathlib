import canonicalLaneMathlib.AdmissibleClass
import BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean.BesselFunctionStructure
import BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean.AiryFunctionStructure

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean

structure CylinderFunctionTheoremPackage {B : BesselFunctionPackage} {A : AiryFunctionPackage} where
  besselAiryRelation : Prop
  cylinderKernel : Prop
  integralTransform : Prop
  spectralConnection : Prop

structure CylinderFunctionTheoremEvidence {B : BesselFunctionPackage} {A : AiryFunctionPackage}
    (C : CylinderFunctionTheoremPackage B A) where
  besselAiryRelationClosed : C.besselAiryRelation
  cylinderKernelClosed : C.cylinderKernel
  integralTransformClosed : C.integralTransform
  spectralConnectionClosed : C.spectralConnection

def CylinderFunctionTheoremClosed {B : BesselFunctionPackage} {A : AiryFunctionPackage}
    (C : CylinderFunctionTheoremPackage B A) : Prop :=
  C.besselAiryRelation ∧ C.cylinderKernel ∧ C.integralTransform ∧ C.spectralConnection

theorem cylinder_function_theorem_closed_from_evidence {B : BesselFunctionPackage} {A : AiryFunctionPackage}
    (C : CylinderFunctionTheoremPackage B A) (E : CylinderFunctionTheoremEvidence C) :
    CylinderFunctionTheoremClosed C := by
  exact And.intro E.besselAiryRelationClosed
    (And.intro E.cylinderKernelClosed
      (And.intro E.integralTransformClosed E.spectralConnectionClosed))

end BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
