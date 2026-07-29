import .AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean

structure CylinderFunctionData where
  index : ℂ
  representation : Prop
  symmetryProperty : Prop
  transformRelation : Prop

structure CylinderFunctionEvidence (C : CylinderFunctionData) where
  representationClosed : C.representation
  symmetryPropertyClosed : C.symmetryProperty
  transformRelationClosed : C.transformRelation

def CylinderFunctionClosed (C : CylinderFunctionData) : Prop :=
  C.representation ∧ C.symmetryProperty ∧ C.transformRelation

theorem cylinder_function_closed_from_evidence (C : CylinderFunctionData) (E : CylinderFunctionEvidence C) :
    CylinderFunctionClosed C := by
  exact And.intro E.representationClosed (And.intro E.symmetryPropertyClosed E.transformRelationClosed)

end BesselAiryFunctionsCylinderFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
