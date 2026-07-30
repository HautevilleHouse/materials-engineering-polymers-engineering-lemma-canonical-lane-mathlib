import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure PolymerCrystallographyPackage where
  unitCell : Type u
  bravaisLattice : Type v
  crystallinityDegree : Prop
  lamellarThickness : Prop
  spheruliteRadius : Prop
  crystallizationKinetics : Prop

structure PolymerCrystallographyEvidence (C : PolymerCrystallographyPackage) where
  crystallinityDegreeClosed : C.crystallinityDegree
  lamellarThicknessClosed : C.lamellarThickness
  spheruliteRadiusClosed : C.spheruliteRadius
  crystallizationKineticsClosed : C.crystallizationKinetics

def PolymerCrystallographyClosed (C : PolymerCrystallographyPackage) : Prop :=
  C.crystallinityDegree ∧ C.lamellarThickness ∧ C.spheruliteRadius ∧ C.crystallizationKinetics

theorem polymer_crystallography_closed_from_evidence (C : PolymerCrystallographyPackage) (E : PolymerCrystallographyEvidence C) :
    PolymerCrystallographyClosed C := by
  exact And.intro E.crystallinityDegreeClosed (And.intro E.lamellarThicknessClosed (And.intro E.spheruliteRadiusClosed E.crystallizationKineticsClosed))

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse