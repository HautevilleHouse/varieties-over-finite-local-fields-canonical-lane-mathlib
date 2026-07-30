import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure FiniteLocalField where
  carrier : Type u
  structure : CommRing carrier
  characteristic : ℕ
  residueField : Type v
  residueStructure : CommRing residueField
  finiteResidueField : Fintype residueField
  valuation : carrier → ℤ ∪ {∞}
  discreteValuationRing : Prop
  localRing : Prop
  completion : carrier → carrier

def finiteLocalFieldAdmissible (F : FiniteLocalField) : Prop :=
  F.finiteResidueField ∧ F.discreteValuationRing ∧ F.localRing

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse