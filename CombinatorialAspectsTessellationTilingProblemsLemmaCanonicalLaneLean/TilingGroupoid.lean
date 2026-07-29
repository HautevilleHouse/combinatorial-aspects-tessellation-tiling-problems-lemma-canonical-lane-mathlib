import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

structure TilingGroupoid where
  objects : Type u
  morphisms : objects → objects → Type v
  composition : ∀ {a b c : objects}, morphisms a b → morphisms b c → morphisms a c
  identityMorphism : ∀ (a : objects), morphisms a a
  associativity : ∀ {a b c d} (f : morphisms a b) (g : morphisms b c) (h : morphisms c d),
    composition (composition f g) h = composition f (composition g h)
  identityLeft : ∀ {a b} (f : morphisms a b), composition (identityMorphism a) f = f
  identityRight : ∀ {a b} (f : morphisms a b), composition f (identityMorphism b) = f
  invertibility : ∀ {a b} (f : morphisms a b), ∃ g : morphisms b a, composition f g = identityMorphism a ∧ composition g f = identityMorphism b

def TilingGroupoidClosed (G : TilingGroupoid) : Prop :=
  True

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse