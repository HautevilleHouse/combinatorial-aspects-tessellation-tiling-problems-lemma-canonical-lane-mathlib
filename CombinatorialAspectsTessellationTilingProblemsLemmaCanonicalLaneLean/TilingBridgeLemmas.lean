import canonicalLaneMathlib.AdmissibleClass
import CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean.TilingAdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TilingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse
