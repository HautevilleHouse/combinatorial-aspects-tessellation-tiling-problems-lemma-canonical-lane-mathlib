import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

structure AperiodicTilingPackage where
  tileSet : Type
  substitutionRule : Type
  aperiodicity : Prop
  tilingExists : Prop
  notPeriodic : Prop
  repetitive : Prop

structure AperiodicTilingEvidence (A : AperiodicTilingPackage) where
  aperiodicityClosed : A.aperiodicity
  tilingExistsClosed : A.tilingExists
  notPeriodicClosed : A.notPeriodic
  repetitiveClosed : A.repetitive

def AperiodicTilingClosed (A : AperiodicTilingPackage) : Prop :=
  A.aperiodicity ∧ A.tilingExists ∧ A.notPeriodic ∧ A.repetitive

theorem aperiodic_tiling_closed_from_evidence (A : AperiodicTilingPackage)
    (E : AperiodicTilingEvidence A) : AperiodicTilingClosed A := by
  exact And.intro E.aperiodicityClosed
    (And.intro E.tilingExistsClosed
      (And.intro E.notPeriodicClosed E.repetitiveClosed))

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse
