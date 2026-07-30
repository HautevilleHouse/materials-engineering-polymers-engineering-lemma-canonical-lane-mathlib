import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean

structure AnisotropyPackage where
  polymer : Type u
  alignmentAxis : Type v
  orderParameter : Type w
  crystallineFraction : Prop
  orientationDistributionFunction : Prop
  mechanicalDirection : Prop
  transverseDirection : Prop
  normalDirection : Prop

structure AnisotropyEvidence (A : AnisotropyPackage) where
  crystallineFractionClosed : A.crystallineFraction
  orientationDistributionFunctionClosed : A.orientationDistributionFunction
  mechanicalDirectionClosed : A.mechanicalDirection
  transverseDirectionClosed : A.transverseDirection
  normalDirectionClosed : A.normalDirection

def AnisotropyClosed (A : AnisotropyPackage) : Prop :=
  A.crystallineFraction ∧ A.orientationDistributionFunction ∧
  A.mechanicalDirection ∧ A.transverseDirection ∧ A.normalDirection

theorem anisotropy_closed_from_evidence (A : AnisotropyPackage) (E : AnisotropyEvidence A) :
    AnisotropyClosed A := by
  exact And.intro E.crystallineFractionClosed
    (And.intro E.orientationDistributionFunctionClosed
      (And.intro E.mechanicalDirectionClosed
        (And.intro E.transverseDirectionClosed E.normalDirectionClosed)))

end MaterialsEngineeringPolymersEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
