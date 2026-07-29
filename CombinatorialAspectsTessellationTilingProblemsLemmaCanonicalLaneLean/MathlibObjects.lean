import CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TilingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TilingAdmittedObject where
  space : TilingSpace
  finiteTiling : Prop
  coversSpace : Prop
  patchModel : Type
  patchTopology : TopologicalSpace patchModel
  isomorphicToPatch : Prop
  conclusion : isomorphicToPatch

def TilingWitnessClosed (O : TilingAdmittedObject) : Prop :=
  O.isomorphicToPatch

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse