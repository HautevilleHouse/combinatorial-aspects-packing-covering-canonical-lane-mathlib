import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringCanonicalLaneLean

structure FractionalWeighting (X : Type u) where
  weight : X → ℝ
  nonnegative : ∀ x : X, weight x ≥ 0

structure FractionalPacking (H : Hypergraph) (w : FractionalWeighting H.VertexSet) where
  packingCondition : ∀ E ∈ H.EdgeSet, ∑ x in E, w.weight x ≤ 1

structure FractionalCovering (H : Hypergraph) (w : FractionalWeighting H.VertexSet) where
  coveringCondition : ∀ x : H.VertexSet, ∑ E in H.EdgeSet, if x ∈ E then w.weight x else 0 ≥ 1

structure FractionalEvidence (H : Hypergraph) (P : FractionalPacking H) (C : FractionalCovering H) (wp : FractionalWeighting H.VertexSet) (wc : FractionalWeighting H.VertexSet) where
  packingSumBound : ∑ x in H.VertexSet, wp.weight x ≤ ∑ E in H.EdgeSet, 1
  coveringSumBound : ∑ E in H.EdgeSet, 1 ≤ ∑ x in H.VertexSet, wc.weight x
  lpDualityRelation : ∑ x in H.VertexSet, wp.weight x = ∑ E in H.EdgeSet, 1

def FractionalPackingCoveringClosed (H : Hypergraph) (P : FractionalPacking H) (C : FractionalCovering H) (wp : FractionalWeighting H.VertexSet) (wc : FractionalWeighting H.VertexSet) : Prop :=
  P.packingCondition ∧ C.coveringCondition ∧ FractionalEvidence H P C wp wc

theorem fractional_packing_covering_closed (H : Hypergraph) (P : FractionalPacking H) (C : FractionalCovering H) (wp : FractionalWeighting H.VertexSet) (wc : FractionalWeighting H.VertexSet) (E : FractionalEvidence H P C wp wc) :
    FractionalPackingCoveringClosed H P C wp wc := by
  refine And.intro P.packingCondition (And.intro C.coveringCondition E)

end CombinatorialAspectsPackingCoveringCanonicalLaneLean
end HautevilleHouse