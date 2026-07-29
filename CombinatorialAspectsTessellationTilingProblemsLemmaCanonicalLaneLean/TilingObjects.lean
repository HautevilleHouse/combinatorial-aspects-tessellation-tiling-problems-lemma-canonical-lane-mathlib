import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

structure TilingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TilingAdmittedObject where
  space : TilingSpace
  tessellation : TilingSpace → Prop
  tileTypes : List (TilingSpace → Prop)
  coveringProperty : Prop
  edgeCompatibility : Prop
  conclusion : coveringProperty ∧ edgeCompatibility

structure TilingEndgameState where
  object : TilingAdmittedObject

def TilingWitnessClosed (O : TilingAdmittedObject) : Prop :=
  O.coveringProperty ∧ O.edgeCompatibility

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse