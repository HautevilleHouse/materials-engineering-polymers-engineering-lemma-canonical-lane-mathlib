import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure MechanicalPropertiesPackage where
  elasticModulus : Prop
  yieldStress : Prop
  fractureToughness : Prop
  creepCompliance : Prop
  viscoelasticRelaxation : Prop
  stressStrainCurve : Prop

structure MechanicalPropertiesEvidence (M : MechanicalPropertiesPackage) where
  elasticModulusClosed : M.elasticModulus
  yieldStressClosed : M.yieldStress
  fractureToughnessClosed : M.fractureToughness
  creepComplianceClosed : M.creepCompliance
  viscoelasticRelaxationClosed : M.viscoelasticRelaxation
  stressStrainCurveClosed : M.stressStrainCurve

def MechanicalPropertiesClosed (M : MechanicalPropertiesPackage) : Prop :=
  M.elasticModulus ∧ M.yieldStress ∧
  M.fractureToughness ∧ M.creepCompliance ∧
  M.viscoelasticRelaxation ∧ M.stressStrainCurve

theorem mechanical_properties_closed_from_evidence (M : MechanicalPropertiesPackage) (E : MechanicalPropertiesEvidence M) :
    MechanicalPropertiesClosed M := by
  exact And.intro E.elasticModulusClosed
    (And.intro E.yieldStressClosed
      (And.intro E.fractureToughnessClosed
        (And.intro E.creepComplianceClosed
          (And.intro E.viscoelasticRelaxationClosed E.stressStrainCurveClosed))))

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
