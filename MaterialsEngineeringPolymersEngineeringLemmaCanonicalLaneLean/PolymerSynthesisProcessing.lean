import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure PolymerSynthesisPackage where
  monomerConversion : Type u
  molecularWeightDistribution : Prop
  polydispersityIndex : Prop
  reactionKinetics : Prop
  processingCondition : Prop
  thermalHistory : Prop

structure SynthesisProcessingEvidence (S : PolymerSynthesisPackage) where
  monomerConversionClosed : S.monomerConversion > 0 ∧ S.monomerConversion ≤ 1
  molecularWeightDistributionClosed : S.molecularWeightDistribution
  polydispersityIndexClosed : S.polydispersityIndex ≥ 1
  reactionKineticsClosed : S.reactionKinetics
  processingConditionClosed : S.processingCondition
  thermalHistoryClosed : S.thermalHistory

def PolymerSynthesisClosed (S : PolymerSynthesisPackage) : Prop :=
  (S.monomerConversion > 0 ∧ S.monomerConversion ≤ 1) ∧ S.molecularWeightDistribution ∧ S.polydispersityIndex ≥ 1 ∧ S.reactionKinetics ∧ S.processingCondition ∧ S.thermalHistory

theorem polymer_synthesis_closed_from_evidence
    (S : PolymerSynthesisPackage) (E : SynthesisProcessingEvidence S) : PolymerSynthesisClosed S := by
  exact And.intro E.monomerConversionClosed
    (And.intro E.molecularWeightDistributionClosed
      (And.intro E.polydispersityIndexClosed
        (And.intro E.reactionKineticsClosed
          (And.intro E.processingConditionClosed E.thermalHistoryClosed))))

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse