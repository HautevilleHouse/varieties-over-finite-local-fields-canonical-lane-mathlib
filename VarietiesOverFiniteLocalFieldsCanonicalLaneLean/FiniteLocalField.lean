import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure FiniteLocalField where
  residueField : Type u
  primePower : ℕ
  valuationRing : Type v
  maximalIdeal : Type w
  residueFieldFinite : Fintype residueField
  residueFieldCharIsPrime : Prop
  residueFieldCardIsPrimePower : Fintype.card residueField = primePower

structure FiniteLocalFieldEvidence (K : FiniteLocalField) where
  residueFieldFiniteClosed : K.residueFieldFinite
  residueFieldCharIsPrimeClosed : K.residueFieldCharIsPrime
  residueFieldCardIsPrimePowerClosed : K.residueFieldCardIsPrimePower

def FiniteLocalFieldClosed (K : FiniteLocalField) : Prop :=
  Fintype @K.residueField K.residueFieldFinite ∧
  K.residueFieldCharIsPrime ∧
  K.residueFieldCardIsPrimePower

theorem finite_local_field_closed_from_evidence (K : FiniteLocalField) (E : FiniteLocalFieldEvidence K) :
    FiniteLocalFieldClosed K := by
  exact And.intro E.residueFieldFiniteClosed
    (And.intro E.residueFieldCharIsPrimeClosed E.residueFieldCardIsPrimePowerClosed)

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse