import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

def ConstrainedPolymersClosure (A : CrystallographyAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_polymers_endgame (A : CrystallographyAdmissibleClass) :
    ConstrainedPolymersClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
