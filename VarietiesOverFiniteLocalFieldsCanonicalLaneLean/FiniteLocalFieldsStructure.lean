import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure FiniteLocalField where
  carrier : Type u
  fieldStructure : Field carrier
  discreteValuation : carrier → ℤ ∪ {∞}
  residueField : Type v
  residueFieldStructure : Field residueField
  finiteResidueField : Fintype residueField
  uniformizer : carrier
  uniformizerVal : discreteValuation uniformizer = 1

def valuationRing (F : FiniteLocalField) : Set F.carrier := {x | F.discreteValuation x ≥ 0}

structure FiniteLocalFieldsAdmissibleObject where
  localField : FiniteLocalField
  residueFieldChar : Nat
  residueFieldCardinal : ℕ
  residueFieldCharPrime : Nat.Prime residueFieldChar
  cardinalEq : residueFieldCardinal = residueFieldChar ^ (Fintype.card (FiniteLocalField.residueField localField))

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse