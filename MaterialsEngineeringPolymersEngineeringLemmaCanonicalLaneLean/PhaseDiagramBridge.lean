import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

def bridgeClosed (A : CrystallographyAdmissibleClass) : Prop :=
  PolymersWitnessClosed A.object

theorem bridge_from_admissible_class (A : CrystallographyAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
