import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.FiniteLocalFields

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure WeilConjecturesPackage (F : FiniteLocalField) where
  zetaFunction : ℕ → ℤ
  rationality : Prop
  functionalEquation : Prop
  riemannHypothesis : Prop
  bettiNumbers : ℕ → ℕ
  cycleMap : ℕ → ℤ

def WeilConjecturesClosed {F : FiniteLocalField} (W : WeilConjecturesPackage F) : Prop :=
  W.rationality ∧ W.functionalEquation ∧ W.riemannHypothesis

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse