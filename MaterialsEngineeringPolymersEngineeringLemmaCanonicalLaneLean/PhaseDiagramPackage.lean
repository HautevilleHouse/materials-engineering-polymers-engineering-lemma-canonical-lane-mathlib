import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  componentSpecies : Type u
  temperatureRange : Type v
  pressureRange : Type w
  phaseBoundariesDetermined : Prop
  eutecticPointIdentified : Prop
  phaseFractionCalculated : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesDeterminedClosed : P.phaseBoundariesDetermined
  eutecticPointIdentifiedClosed : P.eutecticPointIdentified
  phaseFractionCalculatedClosed : P.phaseFractionCalculated

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundariesDetermined ∧ P.eutecticPointIdentified ∧
  P.phaseFractionCalculated

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesDeterminedClosed
    (And.intro E.eutecticPointIdentifiedClosed E.phaseFractionCalculatedClosed)

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse