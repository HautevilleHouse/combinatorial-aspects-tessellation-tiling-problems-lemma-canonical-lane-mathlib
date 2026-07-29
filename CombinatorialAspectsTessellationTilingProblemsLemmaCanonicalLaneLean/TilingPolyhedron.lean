import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

structure TilingPolyhedron where
  carrier : Type u
  topology : TopologicalSpace carrier
  tiling : carrier → Set (carrier → ℕ)
  finiteTiling : Finset (carrier → ℕ)
  covering : ∀ x : carrier, ∃ s ∈ finiteTiling, x ∈ s
  disjointInteriors : ∀ s t ∈ finiteTiling, s ≠ t → (interior s) ∩ (interior t) = ∅

def TilingPolyhedronClosed (P : TilingPolyhedron) : Prop :=
  P.covering ∧ P.disjointInteriors

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse