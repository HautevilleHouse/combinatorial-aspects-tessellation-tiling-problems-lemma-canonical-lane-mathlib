import CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean.GateLemmas

/-!
# Tiling Witness Package
-/

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

structure TilingWitnessPackage where
  tileSet : Type u
  region : Type v
  tilingExists : Prop
  coveringComplete : Prop
  patchBoundariesMatch : Prop
  shapeFitsLocalConstraints : Prop

structure TilingWitnessEvidence (T : TilingWitnessPackage) where
  tilingExistsClosed : T.tilingExists
  coveringCompleteClosed : T.coveringComplete
  patchBoundariesMatchClosed : T.patchBoundariesMatch
  shapeFitsLocalConstraintsClosed : T.shapeFitsLocalConstraints

def TilingWitnessClosed (T : TilingWitnessPackage) : Prop :=
  T.tilingExists ∧ T.coveringComplete ∧ T.patchBoundariesMatch ∧ T.shapeFitsLocalConstraints

theorem tiling_witness_closed_from_evidence (T : TilingWitnessPackage)
    (E : TilingWitnessEvidence T) : TilingWitnessClosed T := by
  exact And.intro E.tilingExistsClosed
    (And.intro E.coveringCompleteClosed
      (And.intro E.patchBoundariesMatchClosed E.shapeFitsLocalConstraintsClosed))

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse