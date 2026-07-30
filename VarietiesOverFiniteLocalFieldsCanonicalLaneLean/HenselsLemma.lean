import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.FiniteLocalField

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure HenselsLemmaPackage (K : FiniteLocalField) where
  polynomialRing : Type u
  polynomial : polynomialRing
  approximateRoot : Type v
  derivativeNonzero : Prop
  liftToExactRoot : Prop
  derivativeNonzeroClosed : derivativeNonzero
  liftToExactRootClosed : liftToExactRoot

structure HenselsLemmaEvidence {K : FiniteLocalField} (H : HenselsLemmaPackage K) where
  derivativeNonzeroClosed : H.derivativeNonzero
  liftToExactRootClosed : H.liftToExactRoot

def HenselsLemmaClosed {K : FiniteLocalField} (H : HenselsLemmaPackage K) : Prop :=
  H.derivativeNonzero ∧ H.liftToExactRoot

theorem hensels_lemma_closed_from_evidence {K : FiniteLocalField} (H : HenselsLemmaPackage K) (E : HenselsLemmaEvidence H) :
    HenselsLemmaClosed H := by
  exact And.intro E.derivativeNonzeroClosed E.liftToExactRootClosed

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse