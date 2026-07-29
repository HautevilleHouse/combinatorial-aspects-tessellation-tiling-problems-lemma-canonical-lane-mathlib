import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean

structure ParquetTilingPackage where
  regionShape : Type
  tileType : Type
  dominoCovering : Prop
  gridDecomposition : Prop
  bipartiteMatchable : Prop
  flipGraphConnected : Prop

structure ParquetTilingEvidence (P : ParquetTilingPackage) where
  dominoCoveringClosed : P.dominoCovering
  gridDecompositionClosed : P.gridDecomposition
  bipartiteMatchableClosed : P.bipartiteMatchable
  flipGraphConnectedClosed : P.flipGraphConnected

def ParquetTilingClosed (P : ParquetTilingPackage) : Prop :=
  P.dominoCovering ∧ P.gridDecomposition ∧ P.bipartiteMatchable ∧ P.flipGraphConnected

theorem parquet_tiling_closed_from_evidence (P : ParquetTilingPackage)
    (E : ParquetTilingEvidence P) : ParquetTilingClosed P := by
  exact And.intro E.dominoCoveringClosed
    (And.intro E.gridDecompositionClosed
      (And.intro E.bipartiteMatchableClosed E.flipGraphConnectedClosed))

end CombinatorialAspectsTessellationTilingProblemsLemmaCanonicalLaneLean
end HautevilleHouse
