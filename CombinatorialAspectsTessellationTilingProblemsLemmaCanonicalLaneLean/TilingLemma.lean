import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

structure TilingLemma where
  polyhedron : TilingPolyhedron
  edgeGraph : TilingEdgeGraph
  groupoid : TilingGroupoid
  coveringClosed : TilingPolyhedronClosed polyhedron
  edgeGraphClosed : TilingEdgeGraphClosed edgeGraph
  gapCondition : Prop

def TilingLemmaClosed (L : TilingLemma) : Prop :=
  L.coveringClosed ∧ L.edgeGraphClosed ∧ L.gapCondition

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse