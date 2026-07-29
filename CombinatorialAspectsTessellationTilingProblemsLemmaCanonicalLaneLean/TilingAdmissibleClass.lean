import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

structure TilingAdmittedObject where
  tileSet : Type u
  region : Type v
  tiling : tileSet → region → Prop
  edgeConsistent : Prop
  vertexConsistent : Prop
  conclusion : edgeConsistent ∧ vertexConsistent

def TilingWitnessClosed (O : TilingAdmittedObject) : Prop :=
  O.conclusion

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse
