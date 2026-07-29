import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringCanonicalLaneLean

structure PackingLowerBoundPackage where
  family : Set (Set ℕ)
  packingNumber : ℕ
  lowerBound : Prop
  boundAchievedByConstruction : Prop

structure PackingLowerBoundEvidence (P : PackingLowerBoundPackage) where
  lowerBoundClosed : P.lowerBound
  boundAchievedByConstructionClosed : P.boundAchievedByConstruction

def PackingLowerBoundClosed (P : PackingLowerBoundPackage) : Prop :=
  P.lowerBound ∧ P.boundAchievedByConstruction

theorem packing_lower_bound_closed_from_evidence (P : PackingLowerBoundPackage) (E : PackingLowerBoundEvidence P) : PackingLowerBoundClosed P :=
  And.intro E.lowerBoundClosed E.boundAchievedByConstructionClosed

end CombinatorialAspectsPackingCoveringCanonicalLaneLean
end HautevilleHouse
