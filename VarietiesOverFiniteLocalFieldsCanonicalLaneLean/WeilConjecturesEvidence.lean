import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.SchemesOverFiniteLocalFields

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure HasseWeilZetaFunction (k : FiniteLocalField) (X : SchemeOverFLF k) where
  zetaFunction : ℕ → ℚ
  rationality : Prop
  functionalEquation : Prop
  riemannHypothesis : Prop
  bettiNumbers : Prop

def ZetaFunctionClosed {k : FiniteLocalField} {X : SchemeOverFLF k} (Z : HasseWeilZetaFunction k X) : Prop :=
  Z.rationality ∧ Z.functionalEquation ∧ Z.riemannHypothesis ∧ Z.bettiNumbers

theorem zeta_function_closed_from_evidence {k : FiniteLocalField} {X : SchemeOverFLF k} (Z : HasseWeilZetaFunction k X) (h : Z.rationality ∧ Z.functionalEquation ∧ Z.riemannHypothesis ∧ Z.bettiNumbers) : ZetaFunctionClosed Z := h

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse