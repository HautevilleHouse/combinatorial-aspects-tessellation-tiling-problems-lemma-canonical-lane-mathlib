import CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean.TilingObjects

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

structure TilingEdgeLemmaPackage where
  edgeMeasureZero : Prop
  adjacencyCondition : Prop
  graphDualConnected : Prop
  boundaryTilingConsistent : Prop

structure TilingEdgeLemmaEvidence (P : TilingEdgeLemmaPackage) where
  edgeMeasureZeroClosed : P.edgeMeasureZero
  adjacencyConditionClosed : P.adjacencyCondition
  graphDualConnectedClosed : P.graphDualConnected
  boundaryTilingConsistentClosed : P.boundaryTilingConsistent

def TilingEdgeLemmaClosed (P : TilingEdgeLemmaPackage) : Prop :=
  P.edgeMeasureZero ∧ P.adjacencyCondition ∧ P.graphDualConnected ∧ P.boundaryTilingConsistent

theorem tiling_edge_lemma_closed_from_evidence
    (P : TilingEdgeLemmaPackage) (E : TilingEdgeLemmaEvidence P) :
    TilingEdgeLemmaClosed P := by
  exact And.intro E.edgeMeasureZeroClosed
    (And.intro E.adjacencyConditionClosed
      (And.intro E.graphDualConnectedClosed E.boundaryTilingConsistentClosed))

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse