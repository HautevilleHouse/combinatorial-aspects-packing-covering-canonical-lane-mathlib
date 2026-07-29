import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringCanonicalLaneLean

structure MatchingPackingProblem (H : Hypergraph) where
  matchingFamily : Set (Set H.VertexSet)
  packingFamily : Set (Set H.VertexSet)
  matchingDisjoint : ∀ M ∈ matchingFamily, ∀ N ∈ matchingFamily, M ≠ N → Disjoint M N
  packingDisjoint : ∀ A ∈ packingFamily, ∀ B ∈ packingFamily, A ≠ B → Disjoint A B
  matchingSubsetPacking : matchingFamily ⊆ packingFamily

structure MatchingPackingBounds (H : Hypergraph) (M : MatchingPackingProblem H) where
  matchingBound : Finset.card (Finset.filter (λ E => E ∈ M.matchingFamily) (Finset.univ : Finset (Set H.VertexSet))) ≤ Finset.card (Finset.filter (λ E => E ∈ M.packingFamily) (Finset.univ : Finset (Set H.VertexSet)))
  packingBound : Finset.card (Finset.filter (λ E => E ∈ M.packingFamily) (Finset.univ : Finset (Set H.VertexSet))) ≤ Finset.card (Finset.filter (λ E => E ∈ M.matchingFamily) (Finset.univ : Finset (Set H.VertexSet)))

def MatchingPackingClosed (H : Hypergraph) (M : MatchingPackingProblem H) : Prop :=
  M.matchingDisjoint ∧ M.packingDisjoint ∧ M.matchingSubsetPacking

theorem matching_packing_closed_from_evidence (H : Hypergraph) (M : MatchingPackingProblem H) (B : MatchingPackingBounds H M) :
    MatchingPackingClosed H M := by
  refine And.intro M.matchingDisjoint (And.intro M.packingDisjoint M.matchingSubsetPacking)

end CombinatorialAspectsPackingCoveringCanonicalLaneLean
end HautevilleHouse