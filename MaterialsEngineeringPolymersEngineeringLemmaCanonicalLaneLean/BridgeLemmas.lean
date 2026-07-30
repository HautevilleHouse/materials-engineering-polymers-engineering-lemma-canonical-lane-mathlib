import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

def bridgeClosed (A : MaterialsAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : MaterialsAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse