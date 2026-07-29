import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

structure TilingEdgeGraph where
  vertices : Finset ℕ
  edges : Finset (ℕ × ℕ)
  symmetryGroup : Finset (ℕ → ℕ)
  vertexTransitive : Prop
  edgeTransitive : Prop

def TilingEdgeGraphClosed (G : TilingEdgeGraph) : Prop :=
  G.vertexTransitive ∧ G.edgeTransitive

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse