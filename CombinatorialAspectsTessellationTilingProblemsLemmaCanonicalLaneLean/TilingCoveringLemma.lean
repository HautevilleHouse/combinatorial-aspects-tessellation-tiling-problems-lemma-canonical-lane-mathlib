import CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean.TilingEdgeLemma

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

structure TilingCoveringLemmaPackage where
  tilingCoversSpace : Prop
  tileInteriorDisjoint : Prop
  localFinite : Prop
  refinementProperty : Prop

structure TilingCoveringLemmaEvidence (P : TilingCoveringLemmaPackage) where
  tilingCoversSpaceClosed : P.tilingCoversSpace
  tileInteriorDisjointClosed : P.tileInteriorDisjoint
  localFiniteClosed : P.localFinite
  refinementPropertyClosed : P.refinementProperty

def TilingCoveringLemmaClosed (P : TilingCoveringLemmaPackage) : Prop :=
  P.tilingCoversSpace ∧ P.tileInteriorDisjoint ∧ P.localFinite ∧ P.refinementProperty

theorem tiling_covering_lemma_closed_from_evidence
    (P : TilingCoveringLemmaPackage) (E : TilingCoveringLemmaEvidence P) :
    TilingCoveringLemmaClosed P := by
  exact And.intro E.tilingCoversSpaceClosed
    (And.intro E.tileInteriorDisjointClosed
      (And.intro E.localFiniteClosed E.refinementPropertyClosed))

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse