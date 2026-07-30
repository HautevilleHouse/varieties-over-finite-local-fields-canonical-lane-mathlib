import VarietiesOverFiniteLocalFieldsCanonicalLaneLean.IgusaZetaFunction

/-! # Weil Conjectures over Finite Local Fields Package -/

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure WeilConjecturesLocalFieldPackage (A : AdmissibleClass) (Z : ZetaFunctionPackage A)
    (I : IgusaZetaFunctionPackage A Z) where
  rationalPointCount : ℕ → ℕ
  functionalEquationAfterWeil : Prop
  riemannHypothesisLocalField : Prop

structure WeilConjecturesLocalFieldEvidence (A : AdmissibleClass) (Z : ZetaFunctionPackage A)
    (I : IgusaZetaFunctionPackage A Z) (W : WeilConjecturesLocalFieldPackage A Z I) where
  functionalEquationClosed : W.functionalEquationAfterWeil
  riemannHypothesisClosed : W.riemannHypothesisLocalField

def WeilConjecturesLocalFieldClosed (A : AdmissibleClass) (Z : ZetaFunctionPackage A)
    (I : IgusaZetaFunctionPackage A Z) (W : WeilConjecturesLocalFieldPackage A Z I) : Prop :=
  W.functionalEquationAfterWeil ∧ W.riemannHypothesisLocalField

theorem weil_conjectures_local_field_closed_from_evidence (A : AdmissibleClass) (Z : ZetaFunctionPackage A)
    (I : IgusaZetaFunctionPackage A Z) (W : WeilConjecturesLocalFieldPackage A Z I)
    (E : WeilConjecturesLocalFieldEvidence A Z I W) : WeilConjecturesLocalFieldClosed A Z I W := by
  exact And.intro E.functionalEquationClosed E.riemannHypothesisClosed

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse