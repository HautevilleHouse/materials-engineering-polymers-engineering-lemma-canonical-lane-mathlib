import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Type u
  compositionRange : Type v
  binodalCurve : Prop
  spinodalCurve : Prop
  nucleationRate : Prop
  criticalNucleusSize : Prop

structure NucleationEvidence (P : PhaseDiagramPackage) where
  binodalCurveClosed : P.binodalCurve
  spinodalCurveClosed : P.spinodalCurve
  nucleationRateClosed : P.nucleationRate
  criticalNucleusSizeClosed : P.criticalNucleusSize

def PhaseDiagramNucleationClosed (P : PhaseDiagramPackage) : Prop :=
  P.binodalCurve ∧ P.spinodalCurve ∧ P.nucleationRate ∧ P.criticalNucleusSize

theorem phase_diagram_nucleation_closed_from_evidence
    (P : PhaseDiagramPackage) (E : NucleationEvidence P) : PhaseDiagramNucleationClosed P := by
  exact And.intro E.binodalCurveClosed
    (And.intro E.spinodalCurveClosed
      (And.intro E.nucleationRateClosed E.criticalNucleusSizeClosed))

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse