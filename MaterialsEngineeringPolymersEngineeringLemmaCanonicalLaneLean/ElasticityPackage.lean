import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure ElasticityPackage where
  elasticModulusTensor : Type u
  youngsModulusComputed : Prop
  poissonRatioComputed : Prop
  shearModulusComputed : Prop
  bulkModulusComputed : Prop
  stressStrainRelationLinear : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  youngsModulusComputedClosed : E.youngsModulusComputed
  poissonRatioComputedClosed : E.poissonRatioComputed
  shearModulusComputedClosed : E.shearModulusComputed
  bulkModulusComputedClosed : E.bulkModulusComputed
  stressStrainRelationLinearClosed : E.stressStrainRelationLinear

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.youngsModulusComputed ∧ E.poissonRatioComputed ∧
  E.shearModulusComputed ∧ E.bulkModulusComputed ∧
  E.stressStrainRelationLinear

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.youngsModulusComputedClosed
    (And.intro Ev.poissonRatioComputedClosed
      (And.intro Ev.shearModulusComputedClosed
        (And.intro Ev.bulkModulusComputedClosed
          Ev.stressStrainRelationLinearClosed)))

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse