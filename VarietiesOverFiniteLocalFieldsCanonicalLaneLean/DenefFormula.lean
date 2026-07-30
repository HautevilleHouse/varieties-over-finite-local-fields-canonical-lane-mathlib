import VarietiesOverFiniteLocalFieldsCanonicalLaneLean.WeilConjecturesLocalField

/-! # Denef Formula Package -/

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure DenefFormulaPackage (A : AdmissibleClass) (Z : ZetaFunctionPackage A)
    (I : IgusaZetaFunctionPackage A Z) (W : WeilConjecturesLocalFieldPackage A Z I) where
  denefFormula : Prop
  rationalityFromDenef : Prop

structure DenefFormulaEvidence (A : AdmissibleClass) (Z : ZetaFunctionPackage A)
    (I : IgusaZetaFunctionPackage A Z) (W : WeilConjecturesLocalFieldPackage A Z I)
    (D : DenefFormulaPackage A Z I W) where
  denefFormulaClosed : D.denefFormula
  rationalityFromDenefClosed : D.rationalityFromDenef

def DenefFormulaClosed (A : AdmissibleClass) (Z : ZetaFunctionPackage A)
    (I : IgusaZetaFunctionPackage A Z) (W : WeilConjecturesLocalFieldPackage A Z I)
    (D : DenefFormulaPackage A Z I W) : Prop :=
  D.denefFormula ∧ D.rationalityFromDenef

theorem denef_formula_closed_from_evidence (A : AdmissibleClass) (Z : ZetaFunctionPackage A)
    (I : IgusaZetaFunctionPackage A Z) (W : WeilConjecturesLocalFieldPackage A Z I)
    (D : DenefFormulaPackage A Z I W) (E : DenefFormulaEvidence A Z I W D) :
    DenefFormulaClosed A Z I W D := by
  exact And.intro E.denefFormulaClosed E.rationalityFromDenefClosed

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse