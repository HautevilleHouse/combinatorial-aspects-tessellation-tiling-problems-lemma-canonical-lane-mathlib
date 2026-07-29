import CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TilingEndgameState where
  object : TilingAdmittedObject

def tilingProjection : Projection TilingEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem tiling_projection_idempotent (x : TilingEndgameState) :
    tilingProjection.toFun (tilingProjection.toFun x) = tilingProjection.toFun x := by
  exact tilingProjection.idempotent x

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse