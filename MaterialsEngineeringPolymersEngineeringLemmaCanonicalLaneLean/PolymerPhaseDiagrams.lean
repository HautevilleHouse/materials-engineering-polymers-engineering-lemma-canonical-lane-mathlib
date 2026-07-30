import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure PolymerPhaseDiagramPackage where
  meltingTemperature : Prop
  glassTransitionTemperature : Prop
  phaseSeparation : Prop
  miscibilityGap : Prop
  fldiagram : Prop

structure PolymerPhaseDiagramEvidence (P : PolymerPhaseDiagramPackage) where
  meltingTemperatureClosed : P.meltingTemperature
  glassTransitionTemperatureClosed : P.glassTransitionTemperature
  phaseSeparationClosed : P.phaseSeparation
  miscibilityGapClosed : P.miscibilityGap
  fldiagramClosed : P.fldiagram

def PolymerPhaseDiagramClosed (P : PolymerPhaseDiagramPackage) : Prop :=
  P.meltingTemperature ∧ P.glassTransitionTemperature ∧ P.phaseSeparation ∧ P.miscibilityGap ∧ P.fldiagram

theorem polymer_phase_diagram_closed_from_evidence (P : PolymerPhaseDiagramPackage) (E : PolymerPhaseDiagramEvidence P) :
    PolymerPhaseDiagramClosed P := by
  exact And.intro E.meltingTemperatureClosed (And.intro E.glassTransitionTemperatureClosed (And.intro E.phaseSeparationClosed (And.intro E.miscibilityGapClosed E.fldiagramClosed)))

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse