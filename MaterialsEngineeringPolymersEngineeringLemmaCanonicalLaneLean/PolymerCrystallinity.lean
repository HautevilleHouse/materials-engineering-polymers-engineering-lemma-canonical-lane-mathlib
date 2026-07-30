import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure CrystallinityPackage where
  polymerChainStructure : Prop
  unitCellGeometry : Prop
  lamellarThickness : Prop
  spheruliteRadius : Prop
  degreeOfCrystallinity : Prop
  meltingTemperature : Prop

structure CrystallinityEvidence (C : CrystallinityPackage) where
  polymerChainStructureClosed : C.polymerChainStructure
  unitCellGeometryClosed : C.unitCellGeometry
  lamellarThicknessClosed : C.lamellarThickness
  spheruliteRadiusClosed : C.spheruliteRadius
  degreeOfCrystallinityClosed : C.degreeOfCrystallinity
  meltingTemperatureClosed : C.meltingTemperature

def CrystallinityClosed (C : CrystallinityPackage) : Prop :=
  C.polymerChainStructure ∧ C.unitCellGeometry ∧
  C.lamellarThickness ∧ C.spheruliteRadius ∧
  C.degreeOfCrystallinity ∧ C.meltingTemperature

theorem crystallinity_closed_from_evidence (C : CrystallinityPackage) (E : CrystallinityEvidence C) :
    CrystallinityClosed C := by
  exact And.intro E.polymerChainStructureClosed
    (And.intro E.unitCellGeometryClosed
      (And.intro E.lamellarThicknessClosed
        (And.intro E.spheruliteRadiusClosed
          (And.intro E.degreeOfCrystallinityClosed E.meltingTemperatureClosed))))

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
