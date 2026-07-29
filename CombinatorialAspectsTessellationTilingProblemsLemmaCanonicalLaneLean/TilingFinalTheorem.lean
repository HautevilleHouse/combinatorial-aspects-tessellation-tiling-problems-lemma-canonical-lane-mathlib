import canonicalLaneMathlib.AdmissibleClass
import CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean.TilingBridgeLemmas
import CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean.TilingGateLemmas

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

def ConstrainedTilingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_tiling_endgame (A : AdmissibleClass) :
    ConstrainedTilingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse
