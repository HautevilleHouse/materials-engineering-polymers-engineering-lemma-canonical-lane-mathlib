import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  fractureToughnessMeasured : Prop
  crackPropagationCriterion : Prop
  parisLawApplicable : Prop
  fatigueLifePrediction : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureToughnessMeasuredClosed : F.fractureToughnessMeasured
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  parisLawApplicableClosed : F.parisLawApplicable
  fatigueLifePredictionClosed : F.fatigueLifePrediction

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureToughnessMeasured ∧ F.crackPropagationCriterion ∧
  F.parisLawApplicable ∧ F.fatigueLifePrediction

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (Ev : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro Ev.fractureToughnessMeasuredClosed
    (And.intro Ev.crackPropagationCriterionClosed
      (And.intro Ev.parisLawApplicableClosed Ev.fatigueLifePredictionClosed))

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse