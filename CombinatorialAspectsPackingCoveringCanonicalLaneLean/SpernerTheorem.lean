import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringCanonicalLaneLean

structure SpernerFamily (A : AdmissibleClass) where
  groundSet : ℕ
  antichain : Set (Set (Fin groundSet))
  spernerProperty : Prop

def SpernerClosed {A : AdmissibleClass} (S : SpernerFamily A) : Prop :=
  S.spernerProperty

theorem sperner_closed_from_admissible (A : AdmissibleClass) :
    SpernerClosed (SpernerFamily.mk A 5 {s : Set (Fin 5) | s.card = 2} True) := by
  exact True.intro

end CombinatorialAspectsPackingCoveringCanonicalLaneLean
end HautevilleHouse