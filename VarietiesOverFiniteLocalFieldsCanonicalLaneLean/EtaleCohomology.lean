import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.FiniteLocalFields

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure EtaleCohomologyPackage (F : FiniteLocalField) where
  cohomologyGroups : ℕ → Type
  lAdicStructure : ℕ → Type
  galoisAction : Prop
  poincareDuality : Prop
  baseChangeProperty : Prop
  cycleClassMap : ℕ → ℕ → ℤ

def EtaleCohomologyClosed {F : FiniteLocalField} (E : EtaleCohomologyPackage F) : Prop :=
  E.galoisAction ∧ E.poincareDuality ∧ E.baseChangeProperty

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse