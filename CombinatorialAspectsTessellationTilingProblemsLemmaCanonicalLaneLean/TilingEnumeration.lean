import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

structure TilingEnumerationPackage where
  finiteRegion : Type
  tileShapes : Type
  countingGeneratingFunction : Type
  transferMatrixDiagonalized : Prop
  countClosedForm : Prop
  asymptoticGrowthRate : Prop

structure TilingEnumerationEvidence (T : TilingEnumerationPackage) where
  transferMatrixDiagonalizedClosed : T.transferMatrixDiagonalized
  countClosedFormClosed : T.countClosedForm
  asymptoticGrowthRateClosed : T.asymptoticGrowthRate

def TilingEnumerationClosed (T : TilingEnumerationPackage) : Prop :=
  T.transferMatrixDiagonalized ∧ T.countClosedForm ∧ T.asymptoticGrowthRate

theorem tiling_enumeration_closed_from_evidence (T : TilingEnumerationPackage)
    (E : TilingEnumerationEvidence T) : TilingEnumerationClosed T := by
  exact And.intro E.transferMatrixDiagonalizedClosed
    (And.intro E.countClosedFormClosed E.asymptoticGrowthRateClosed)

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse
