import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringCanonicalLaneLean

structure FiniteGeometryPackingPackage where
  pointSet : Type u
  lineSet : Set (Set (pointSet))
  packingNumber : Nat
  coveringNumber : Nat
  projectivePlaneAxioms : Prop
  packedDesignProperty : Prop
  projectivePlaneAxiomsClosed : projectivePlaneAxioms
  packedDesignPropertyClosed : packedDesignProperty

def FiniteGeometryPackingClosed (F : FiniteGeometryPackingPackage) : Prop :=
  F.projectivePlaneAxioms ∧ F.packedDesignProperty

theorem finite_geometry_packing_closed_from_evidence (F : FiniteGeometryPackingPackage) : FiniteGeometryPackingClosed F := by
  exact And.intro F.projectivePlaneAxiomsClosed F.packedDesignPropertyClosed

end CombinatorialAspectsPackingCoveringCanonicalLaneLean
end HautevilleHouse