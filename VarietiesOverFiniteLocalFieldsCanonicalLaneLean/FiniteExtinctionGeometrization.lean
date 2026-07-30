import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.FiniteLocalField
import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.AffineSchemeOverFiniteLocalField
import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.NeronModel
import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.WeilConjectures

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure FiniteExtinctionGeometrizationPackage (K : FiniteLocalField) (A : AffineSchemeOverFiniteLocalField K) (N : NeronModel K A) (W : WeilConjecturesPackage K A N) where
  finiteExtinctionAlternative : Prop
  geometrizedPiecesClassified : Prop
  simplyConnectedCaseForcesSpherePiece : Prop
  finiteExtinctionAlternativeClosed : finiteExtinctionAlternative
  geometrizedPiecesClassifiedClosed : geometrizedPiecesClassified
  simplyConnectedCaseForcesSpherePieceClosed : simplyConnectedCaseForcesSpherePiece

structure FiniteExtinctionGeometrizationEvidence {K : FiniteLocalField} {A : AffineSchemeOverFiniteLocalField K} {N : NeronModel K A} {W : WeilConjecturesPackage K A N} (G : FiniteExtinctionGeometrizationPackage K A N W) where
  finiteExtinctionAlternativeClosed : G.finiteExtinctionAlternative
  geometrizedPiecesClassifiedClosed : G.geometrizedPiecesClassified
  simplyConnectedCaseForcesSpherePieceClosed : G.simplyConnectedCaseForcesSpherePiece

def FiniteExtinctionGeometrizationClosed {K : FiniteLocalField} {A : AffineSchemeOverFiniteLocalField K} {N : NeronModel K A} {W : WeilConjecturesPackage K A N} (G : FiniteExtinctionGeometrizationPackage K A N W) : Prop :=
  G.finiteExtinctionAlternative ∧ G.geometrizedPiecesClassified ∧ G.simplyConnectedCaseForcesSpherePiece

theorem finite_extinction_geometrization_closed_from_evidence {K : FiniteLocalField} {A : AffineSchemeOverFiniteLocalField K} {N : NeronModel K A} {W : WeilConjecturesPackage K A N} (G : FiniteExtinctionGeometrizationPackage K A N W) (E : FiniteExtinctionGeometrizationEvidence G) :
    FiniteExtinctionGeometrizationClosed G := by
  exact And.intro E.finiteExtinctionAlternativeClosed
    (And.intro E.geometrizedPiecesClassifiedClosed E.simplyConnectedCaseForcesSpherePieceClosed)

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse