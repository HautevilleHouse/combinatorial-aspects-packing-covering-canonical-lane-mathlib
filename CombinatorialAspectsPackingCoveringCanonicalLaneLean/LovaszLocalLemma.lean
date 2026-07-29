import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringCanonicalLaneLean

structure LovaszLocalLemmaPackage where
  events : List (Prop)
  dependencyGraph : Prop
  localCondition : Prop
  conclusion : Prop

structure LovaszLocalLemmaEvidence (L : LovaszLocalLemmaPackage) where
  dependencyGraphClosed : L.dependencyGraph
  localConditionClosed : L.localCondition
  conclusionClosed : L.conclusion

def LovaszLocalLemmaClosed (L : LovaszLocalLemmaPackage) : Prop :=
  L.dependencyGraph ∧ L.localCondition ∧ L.conclusion

theorem lovasz_local_lemma_closed_from_evidence (L : LovaszLocalLemmaPackage) (E : LovaszLocalLemmaEvidence L) : LovaszLocalLemmaClosed L :=
  And.intro E.dependencyGraphClosed (And.intro E.localConditionClosed E.conclusionClosed)

end CombinatorialAspectsPackingCoveringCanonicalLaneLean
end HautevilleHouse
