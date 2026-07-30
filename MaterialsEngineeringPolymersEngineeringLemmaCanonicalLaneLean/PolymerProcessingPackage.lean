import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure PolymerProcessingPackage where
  polymerizationKinetics : Type u
  molecularWeightDistribution : Type v
  crystallinityFraction : Prop
  processingTemperatureRange : Prop
  rheologicalModelValidated : Prop

structure PolymerProcessingEvidence (P : PolymerProcessingPackage) where
  crystallinityFractionClosed : P.crystallinityFraction
  processingTemperatureRangeClosed : P.processingTemperatureRange
  rheologicalModelValidatedClosed : P.rheologicalModelValidated

def PolymerProcessingClosed (P : PolymerProcessingPackage) : Prop :=
  P.crystallinityFraction ∧ P.processingTemperatureRange ∧
  P.rheologicalModelValidated

theorem polymer_processing_closed_from_evidence (P : PolymerProcessingPackage)
    (E : PolymerProcessingEvidence P) : PolymerProcessingClosed P := by
  exact And.intro E.crystallinityFractionClosed
    (And.intro E.processingTemperatureRangeClosed E.rheologicalModelValidatedClosed)

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse