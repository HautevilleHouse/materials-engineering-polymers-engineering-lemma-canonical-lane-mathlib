import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeType : Type u
  unitCell : Type v
  bravaisLatticeClassified : Prop
  crystallographicGroupIdentified : Prop
  xrayDiffractionPattern : Prop
  symmetryOperationsEnumerated : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  crystallographicGroupIdentifiedClosed : C.crystallographicGroupIdentified
  xrayDiffractionPatternClosed : C.xrayDiffractionPattern
  symmetryOperationsEnumeratedClosed : C.symmetryOperationsEnumerated

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeClassified ∧ C.crystallographicGroupIdentified ∧
  C.xrayDiffractionPattern ∧ C.symmetryOperationsEnumerated

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClassifiedClosed
    (And.intro E.crystallographicGroupIdentifiedClosed
      (And.intro E.xrayDiffractionPatternClosed E.symmetryOperationsEnumeratedClosed))

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse