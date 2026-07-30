import canonicalLaneMathlib.AdmissibleClass

/-!
# Mechanical Testing Package

This module defines mechanical testing procedures and failure criteria
for polymeric materials under various loading conditions.
-/

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure TensileProperties where
  youngsModulus : ℝ
  yieldStress : ℝ
  tensileStrength : ℝ
  elongationAtBreak : ℝ
  toughness : ℝ

structure FractureMechanics where
  stressIntensityFactor : ℝ
  fractureToughness : ℝ
  energyReleaseRate : ℝ
  crackPropagationResistance : Prop

structure FatigueProperties where
  stressCycleCurve : Prop
  fatigueLimit : ℝ
  parisLawExponent : ℝ
  fatigueCrackGrowthRate : ℝ

structure ImpactProperties where
  izodImpactStrength : ℝ
  charpyImpactStrength : ℝ
  ductileBrittleTransition : Prop
  impactFractureMechanism : Prop

structure MechanicalTestingEvidence (T : TensileProperties)
    (F : FractureMechanics) (Fa : FatigueProperties) (I : ImpactProperties) where
  youngsModulusClosed : T.youngsModulus > 0
  yieldStressClosed : T.yieldStress > 0
  tensileStrengthClosed : T.tensileStrength > 0
  elongationAtBreakClosed : T.elongationAtBreak > 0
  toughnessClosed : T.toughness > 0
  stressIntensityFactorClosed : F.stressIntensityFactor > 0
  fractureToughnessClosed : F.fractureToughness > 0
  crackPropagationResistanceClosed : F.crackPropagationResistance
  stressCycleCurveClosed : Fa.stressCycleCurve
  fatigueLimitClosed : Fa.fatigueLimit > 0
  izodImpactStrengthClosed : I.izodImpactStrength > 0
  charpyImpactStrengthClosed : I.charpyImpactStrength > 0
  ductileBrittleTransitionClosed : I.ductileBrittleTransition
  impactFractureMechanismClosed : I.impactFractureMechanism

def MechanicalTestingClosed (T : TensileProperties)
    (F : FractureMechanics) (Fa : FatigueProperties) (I : ImpactProperties) : Prop :=
  (T.youngsModulus > 0) ∧ (T.yieldStress > 0) ∧ (T.tensileStrength > 0) ∧
  (T.elongationAtBreak > 0) ∧ (T.toughness > 0) ∧
  (F.stressIntensityFactor > 0) ∧ (F.fractureToughness > 0) ∧
  F.crackPropagationResistance ∧
  Fa.stressCycleCurve ∧ (Fa.fatigueLimit > 0) ∧
  (I.izodImpactStrength > 0) ∧ (I.charpyImpactStrength > 0) ∧
  I.ductileBrittleTransition ∧ I.impactFractureMechanism

theorem mechanical_testing_closed_from_evidence
    (T : TensileProperties) (F : FractureMechanics) (Fa : FatigueProperties) (I : ImpactProperties)
    (E : MechanicalTestingEvidence T F Fa I) : MechanicalTestingClosed T F Fa I := by
  exact And.intro E.youngsModulusClosed
    (And.intro E.yieldStressClosed
      (And.intro E.tensileStrengthClosed
        (And.intro E.elongationAtBreakClosed
          (And.intro E.toughnessClosed
            (And.intro E.stressIntensityFactorClosed
              (And.intro E.fractureToughnessClosed
                (And.intro E.crackPropagationResistanceClosed
                  (And.intro E.stressCycleCurveClosed
                    (And.intro E.fatigueLimitClosed
                      (And.intro E.izodImpactStrengthClosed
                        (And.intro E.charpyImpactStrengthClosed
                          (And.intro E.ductileBrittleTransitionClosed
                            E.impactFractureMechanismClosed))))))))))))

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
