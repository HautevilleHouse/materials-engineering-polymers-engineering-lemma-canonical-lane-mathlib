import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

def gateClosed (A : CrystallographyAdmissibleClass) : Prop :=
  A.latticeParametersSatisfied ∨ A.symmetryRemainderRecorded

theorem gate_from_admissible_class (A : CrystallographyAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
