import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure CrystallographyAdmissibleClass where
  object : PolymersAdmittedObject
  latticeParametersSatisfied : Prop
  symmetryRemainderRecorded : Prop
  gateWitness : latticeParametersSatisfied ∨ symmetryRemainderRecorded

def admittedClosure (A : CrystallographyAdmissibleClass) : Prop :=
  PolymersWitnessClosed A.object ∧ (A.latticeParametersSatisfied ∨ A.symmetryRemainderRecorded)

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
