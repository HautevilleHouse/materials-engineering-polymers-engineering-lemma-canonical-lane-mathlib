import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure PolymerElasticityPackage where
  youngModulus : Prop
  shearModulus : Prop
  bulkModulus : Prop
  poissonRatio : Prop
  hyperelasticModel : Prop
  viscoelasticDamping : Prop

structure PolymerElasticityEvidence (E : PolymerElasticityPackage) where
  youngModulusClosed : E.youngModulus
  shearModulusClosed : E.shearModulus
  bulkModulusClosed : E.bulkModulus
  poissonRatioClosed : E.poissonRatio
  hyperelasticModelClosed : E.hyperelasticModel
  viscoelasticDampingClosed : E.viscoelasticDamping

def PolymerElasticityClosed (E : PolymerElasticityPackage) : Prop :=
  E.youngModulus ∧ E.shearModulus ∧ E.bulkModulus ∧ E.poissonRatio ∧ E.hyperelasticModel ∧ E.viscoelasticDamping

theorem polymer_elasticity_closed_from_evidence (E : PolymerElasticityPackage) (Ev : PolymerElasticityEvidence E) :
    PolymerElasticityClosed E := by
  exact And.intro Ev.youngModulusClosed (And.intro Ev.shearModulusClosed (And.intro Ev.bulkModulusClosed (And.intro Ev.poissonRatioClosed (And.intro Ev.hyperelasticModelClosed Ev.viscoelasticDampingClosed))))

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse