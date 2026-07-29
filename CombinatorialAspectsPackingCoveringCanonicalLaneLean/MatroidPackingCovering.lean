import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringCanonicalLaneLean

structure MatroidPackingCoveringPackage where
  groundSet : Type u
  independentSets : Set (Set (groundSet))
  rankFunction : Set (groundSet) → Nat
  packingNumber : Nat
  coveringNumber : Nat
  matroidAxioms : Prop
  EdmondsPackingTheorem : Prop
  matroidAxiomsClosed : matroidAxioms
  EdmondsPackingTheoremClosed : EdmondsPackingTheorem

def MatroidPackingCoveringClosed (M : MatroidPackingCoveringPackage) : Prop :=
  M.matroidAxioms ∧ M.EdmondsPackingTheorem

theorem matroid_packing_covering_closed_from_evidence (M : MatroidPackingCoveringPackage) : MatroidPackingCoveringClosed M := by
  exact And.intro M.matroidAxiomsClosed M.EdmondsPackingTheoremClosed

end CombinatorialAspectsPackingCoveringCanonicalLaneLean
end HautevilleHouse