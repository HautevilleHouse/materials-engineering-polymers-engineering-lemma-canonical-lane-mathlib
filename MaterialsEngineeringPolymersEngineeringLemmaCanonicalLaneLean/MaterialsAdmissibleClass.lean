import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure MaterialsAdmittedObject where
  materialSystem : Type u
  crystallography : CrystallographyPackage
  phaseDiagram : PhaseDiagramPackage
  elasticity : ElasticityPackage
  fracture : FractureMechanicsPackage
  polymerProcessing : PolymerProcessingPackage
  conclusion : CrystallographyClosed crystallography ∧
    PhaseDiagramClosed phaseDiagram ∧
    ElasticityClosed elasticity ∧
    FractureMechanicsClosed fracture ∧
    PolymerProcessingClosed polymerProcessing

structure MaterialsAdmissibleClass where
  object : MaterialsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def materialsAdmittedClosure (A : MaterialsAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse