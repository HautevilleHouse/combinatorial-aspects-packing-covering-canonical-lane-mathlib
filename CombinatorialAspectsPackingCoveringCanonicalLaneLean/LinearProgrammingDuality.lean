import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringCanonicalLaneLean

structure LinearProgrammingDualityPackage where
  primalLP : Type u
  dualLP : Type v
  primalObjective : primalLP → ℚ
  dualObjective : dualLP → ℚ
  weakDuality : Prop
  strongDuality : Prop
  weakDualityClosed : weakDuality
  strongDualityClosed : strongDuality

def LinearProgrammingDualityClosed (L : LinearProgrammingDualityPackage) : Prop :=
  L.weakDuality ∧ L.strongDuality

theorem linear_programming_duality_closed_from_evidence (L : LinearProgrammingDualityPackage) : LinearProgrammingDualityClosed L := by
  exact And.intro L.weakDualityClosed L.strongDualityClosed

end CombinatorialAspectsPackingCoveringCanonicalLaneLean
end HautevilleHouse