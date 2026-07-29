import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringCanonicalLaneLean

structure HaussdorffDimensionPackage where
  metricSpace : Type u
  distance : metricSpace → metricSpace → ℝ
  dimension : ℝ
  haussdorffMeasure : Prop
  packingMeasure : Prop
  equality : Prop

structure HaussdorffDimensionEvidence (H : HaussdorffDimensionPackage) where
  haussdorffMeasureClosed : H.haussdorffMeasure
  packingMeasureClosed : H.packingMeasure
  equalityClosed : H.equality

def HaussdorffDimensionClosed (H : HaussdorffDimensionPackage) : Prop :=
  H.haussdorffMeasure ∧ H.packingMeasure ∧ H.equality

theorem haussdorff_dimension_closed_from_evidence (H : HaussdorffDimensionPackage) (E : HaussdorffDimensionEvidence H) : HaussdorffDimensionClosed H := by
  exact And.intro E.haussdorffMeasureClosed (And.intro E.packingMeasureClosed E.equalityClosed)

end CombinatorialAspectsPackingCoveringCanonicalLaneLean
end HautevilleHouse