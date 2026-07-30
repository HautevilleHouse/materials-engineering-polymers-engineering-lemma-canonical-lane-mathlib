import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure PolymerFracturePackage where
  stressIntensityFactor : Prop
  fractureToughness : Prop
  crackPropagationRate : Prop
  fatigueThreshold : Prop
  crazeFormation : Prop
  chainScissionZone : Prop

structure PolymerFractureEvidence (F : PolymerFracturePackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  crackPropagationRateClosed : F.crackPropagationRate
  fatigueThresholdClosed : F.fatigueThreshold
  crazeFormationClosed : F.crazeFormation
  chainScissionZoneClosed : F.chainScissionZone

def PolymerFractureClosed (F : PolymerFracturePackage) : Prop :=
  F.stressIntensityFactor ∧ F.fractureToughness ∧ F.crackPropagationRate ∧ F.fatigueThreshold ∧ F.crazeFormation ∧ F.chainScissionZone

theorem polymer_fracture_closed_from_evidence (F : PolymerFracturePackage) (E : PolymerFractureEvidence F) :
    PolymerFractureClosed F := by
  exact And.intro E.stressIntensityFactorClosed (And.intro E.fractureToughnessClosed (And.intro E.crackPropagationRateClosed (And.intro E.fatigueThresholdClosed (And.intro E.crazeFormationClosed E.chainScissionZoneClosed))))

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse