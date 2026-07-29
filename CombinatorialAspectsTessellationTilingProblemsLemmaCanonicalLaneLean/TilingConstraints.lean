import canonicalLaneMathlib.AdmissibleClass
import CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean.TilingAdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

structure TilingConstraintSet where
  tileTypes : List (Type u)
  adjacencyRules : Prop
  periodicCondition : Prop
  coveringProperty : Prop

structure TilingConstraintEvidence (C : TilingConstraintSet) where
  adjacencyRulesClosed : C.adjacencyRules
  periodicConditionClosed : C.periodicCondition
  coveringPropertyClosed : C.coveringProperty

def TilingConstraintsClosed (C : TilingConstraintSet) : Prop :=
  C.adjacencyRules ∧ C.periodicCondition ∧ C.coveringProperty

theorem tiling_constraints_closed_from_evidence (C : TilingConstraintSet)
    (E : TilingConstraintEvidence C) : TilingConstraintsClosed C := by
  exact And.intro E.adjacencyRulesClosed
    (And.intro E.periodicConditionClosed E.coveringPropertyClosed)

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse
