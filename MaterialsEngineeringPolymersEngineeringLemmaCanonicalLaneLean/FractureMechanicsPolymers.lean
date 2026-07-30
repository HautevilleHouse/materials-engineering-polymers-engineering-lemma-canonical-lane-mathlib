import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  fractureToughness : Prop
  crackOpeningDisplacement : Prop
  jIntegral : Prop
  crazingMechanism : Prop
  chainScissionDensity : Prop

structure FractureEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor > 0
  fractureToughnessClosed : F.fractureToughness
  crackOpeningDisplacementClosed : F.crackOpeningDisplacement
  jIntegralClosed : F.jIntegral
  crazingMechanismClosed : F.crazingMechanism
  chainScissionDensityClosed : F.chainScissionDensity

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor > 0 ∧ F.fractureToughness ∧ F.crackOpeningDisplacement ∧ F.jIntegral ∧ F.crazingMechanism ∧ F.chainScissionDensity

theorem fracture_mechanics_closed_from_evidence
    (F : FractureMechanicsPackage) (E : FractureEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed
    (And.intro E.fractureToughnessClosed
      (And.intro E.crackOpeningDisplacementClosed
        (And.intro E.jIntegralClosed
          (And.intro E.crazingMechanismClosed E.chainScissionDensityClosed))))

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse