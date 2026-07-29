import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

structure AperiodicTilingSet where
  tileSet : Set ℕ
  periodicityCondition : ∀ x : ℕ, x ∉ tileSet → ∃ shift : ℕ → ℕ, shift x ≠ x
  aperiodicityProof : Prop

structure AperiodicityClosure (A : AperiodicTilingSet) : Prop :=
  aperiodicityProofTerm : A.aperiodicityProof

theorem aperiodicity_closed (A : AperiodicTilingSet) :
    AperiodicityClosure A := by
  exact { aperiodicityProofTerm := A.aperiodicityProof }

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse