import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure PolymerRheologyPackage where
  viscosityModel : Prop
  shearThinningIndex : Prop
  relaxationSpectrum : Prop
  meltFlowIndex : Prop
  coolingCrystallization : Prop
  orientationBirefringence : Prop

structure PolymerRheologyEvidence (R : PolymerRheologyPackage) where
  viscosityModelClosed : R.viscosityModel
  shearThinningIndexClosed : R.shearThinningIndex
  relaxationSpectrumClosed : R.relaxationSpectrum
  meltFlowIndexClosed : R.meltFlowIndex
  coolingCrystallizationClosed : R.coolingCrystallization
  orientationBirefringenceClosed : R.orientationBirefringence

def PolymerRheologyClosed (R : PolymerRheologyPackage) : Prop :=
  R.viscosityModel ∧ R.shearThinningIndex ∧ R.relaxationSpectrum ∧ R.meltFlowIndex ∧ R.coolingCrystallization ∧ R.orientationBirefringence

theorem polymer_rheology_closed_from_evidence (R : PolymerRheologyPackage) (E : PolymerRheologyEvidence R) :
    PolymerRheologyClosed R := by
  exact And.intro E.viscosityModelClosed (And.intro E.shearThinningIndexClosed (And.intro E.relaxationSpectrumClosed (And.intro E.meltFlowIndexClosed (And.intro E.coolingCrystallizationClosed E.orientationBirefringenceClosed))))

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse