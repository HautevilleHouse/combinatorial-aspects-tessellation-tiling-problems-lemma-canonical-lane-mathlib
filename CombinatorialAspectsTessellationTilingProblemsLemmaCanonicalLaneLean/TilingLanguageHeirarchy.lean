import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

structure TilingLanguageFamily where
  tileTypes : ℕ
  adjacencyRules : Set (ℕ × ℕ)
  coveringCondition : Prop
  languageClosed : Prop

structure LocalConstraintSystem where
  constraintGraph : SimpleGraph ℕ
  localRules : ℕ → ℕ
  consistencyCondition : Prop

structure HierarchyClosure (L : TilingLanguageFamily) (C : LocalConstraintSystem) : Prop :=
  coveringConditionTerm : L.coveringCondition
  consistencyConditionTerm : C.consistencyCondition

theorem hierarchy_closed (L : TilingLanguageFamily) (C : LocalConstraintSystem) :
    HierarchyClosure L C := by
  exact { coveringConditionTerm := L.coveringCondition, consistencyConditionTerm := C.consistencyCondition }

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse