import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.SchemesOverFiniteLocalFields

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure RamanujanPeterssonBound (k : FiniteLocalField) (X : SchemeOverFLF k) where
  weightBound : Prop
  eigenvalueBound : Prop
  automorphicForm : Prop
  cohomologyRealization : Prop

def RamanujanPeterssonClosed {k : FiniteLocalField} {X : SchemeOverFLF k} (R : RamanujanPeterssonBound k X) : Prop :=
  R.weightBound ∧ R.eigenvalueBound ∧ R.automorphicForm ∧ R.cohomologyRealization

theorem ramanujan_petersson_closed_from_evidence {k : FiniteLocalField} {X : SchemeOverFLF k} (R : RamanujanPeterssonBound k X) (h : R.weightBound ∧ R.eigenvalueBound ∧ R.automorphicForm ∧ R.cohomologyRealization) : RamanujanPeterssonClosed R := h

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse