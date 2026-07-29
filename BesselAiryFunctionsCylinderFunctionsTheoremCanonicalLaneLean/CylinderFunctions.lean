import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean

structure CylinderFunctionsPackage where
  hankelFunctions : Type u
  modifiedBesselFunctions : Type v
  sphericalBesselFunctions : Type w
  cylinderFunctionRelations : Prop
  differentiationProperties : Prop

structure CylinderFunctionsEvidence (C : CylinderFunctionsPackage) where
  cylinderFunctionRelationsClosed : C.cylinderFunctionRelations
  differentiationPropertiesClosed : C.differentiationProperties

def CylinderFunctionsClosed (C : CylinderFunctionsPackage) : Prop :=
  C.cylinderFunctionRelations ∧ C.differentiationProperties

theorem cylinder_functions_closed_from_evidence (C : CylinderFunctionsPackage) (E : CylinderFunctionsEvidence C) : CylinderFunctionsClosed C := by
  exact And.intro E.cylinderFunctionRelationsClosed E.differentiationPropertiesClosed

end BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean
end HautevilleHouse