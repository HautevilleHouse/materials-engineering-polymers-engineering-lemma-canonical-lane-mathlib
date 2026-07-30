import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure PolymersSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PolymersAdmittedObject where
  space : PolymersSpace
  crystallineStructure : Prop
  mechanicalResilience : Prop
  modelType : Type
  modelTopology : TopologicalSpace modelType
  admissibleBehavior : Prop
  conclusion : admissibleBehavior

structure PolymersEndgameState where
  object : PolymersAdmittedObject

def PolymersWitnessClosed (O : PolymersAdmittedObject) : Prop :=
  O.admissibleBehavior

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
