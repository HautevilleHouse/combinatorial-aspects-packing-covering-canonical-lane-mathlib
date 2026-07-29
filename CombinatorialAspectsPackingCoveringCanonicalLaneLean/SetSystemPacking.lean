import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringCanonicalLaneLean

structure SetSystemPackingPackage where
  universe : Type u
  setSystem : Set (Set universe)
  packingSize : Nat
  pairwiseDisjoint : Prop
  maxCardinality : Prop

structure SetSystemPackingEvidence (P : SetSystemPackingPackage) where
  packingSizeClosed : P.packingSize = 0 ∨ P.pairwiseDisjoint
  maxCardinalityClosed : P.maxCardinality

def SetSystemPackingClosed (P : SetSystemPackingPackage) : Prop :=
  (P.packingSize = 0 ∨ P.pairwiseDisjoint) ∧ P.maxCardinality

theorem set_system_packing_closed_from_evidence (P : SetSystemPackingPackage) (E : SetSystemPackingEvidence P) : SetSystemPackingClosed P := by
  exact And.intro E.packingSizeClosed E.maxCardinalityClosed

end CombinatorialAspectsPackingCoveringCanonicalLaneLean
end HautevilleHouse