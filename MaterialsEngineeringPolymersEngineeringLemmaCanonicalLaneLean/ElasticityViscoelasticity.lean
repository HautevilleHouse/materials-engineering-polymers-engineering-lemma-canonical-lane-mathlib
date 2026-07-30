import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure ElasticityViscoelasticityPackage where
  elasticModulus : Type u
  shearModulus : Type v
  poissonRatio : Prop
  creepCompliance : Prop
  stressRelaxation : Prop
  timeTemperatureSuperposition : Prop

structure ViscoelasticityEvidence (E : ElasticityViscoelasticityPackage) where
  elasticModulusClosed : E.elasticModulus > 0
  shearModulusClosed : E.shearModulus > 0
  poissonRatioClosed : E.poissonRatio
  creepComplianceClosed : E.creepCompliance
  stressRelaxationClosed : E.stressRelaxation
  timeTemperatureSuperpositionClosed : E.timeTemperatureSuperposition

def ElasticityViscoelasticityClosed (E : ElasticityViscoelasticityPackage) : Prop :=
  E.elasticModulus > 0 ∧ E.shearModulus > 0 ∧ E.poissonRatio ∧ E.creepCompliance ∧ E.stressRelaxation ∧ E.timeTemperatureSuperposition

theorem elasticity_viscoelasticity_closed_from_evidence
    (E : ElasticityViscoelasticityPackage) (Ev : ViscoelasticityEvidence E) :
    ElasticityViscoelasticityClosed E := by
  exact And.intro Ev.elasticModulusClosed
    (And.intro Ev.shearModulusClosed
      (And.intro Ev.poissonRatioClosed
        (And.intro Ev.creepComplianceClosed
          (And.intro Ev.stressRelaxationClosed Ev.timeTemperatureSuperpositionClosed))))

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse