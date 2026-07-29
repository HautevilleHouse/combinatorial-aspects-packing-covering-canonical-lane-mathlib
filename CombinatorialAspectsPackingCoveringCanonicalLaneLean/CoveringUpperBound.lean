import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringCanonicalLaneLean

structure CoveringUpperBoundPackage where
  family : Set (Set ℕ)
  coveringNumber : ℕ
  upperBound : Prop
  boundAchievedByConstruction : Prop

structure CoveringUpperBoundEvidence (C : CoveringUpperBoundPackage) where
  upperBoundClosed : C.upperBound
  boundAchievedByConstructionClosed : C.boundAchievedByConstruction

def CoveringUpperBoundClosed (C : CoveringUpperBoundPackage) : Prop :=
  C.upperBound ∧ C.boundAchievedByConstruction

theorem covering_upper_bound_closed_from_evidence (C : CoveringUpperBoundPackage) (E : CoveringUpperBoundEvidence C) : CoveringUpperBoundClosed C :=
  And.intro E.upperBoundClosed E.boundAchievedByConstructionClosed

end CombinatorialAspectsPackingCoveringCanonicalLaneLean
end HautevilleHouse
