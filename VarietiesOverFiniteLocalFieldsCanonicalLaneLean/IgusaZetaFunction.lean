import VarietiesOverFiniteLocalFieldsCanonicalLaneLean.ZetaFunctionLocalField

/-! # Igusa Zeta Function Package -/

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure IgusaZetaFunctionPackage (A : AdmissibleClass) (Z : ZetaFunctionPackage A) where
  polynomial : Type u
  igusaZeta : ℕ → ℚ
  rationalityOverLocalField : Prop
  poles : Prop

structure IgusaZetaFunctionEvidence (A : AdmissibleClass) (Z : ZetaFunctionPackage A)
    (I : IgusaZetaFunctionPackage A Z) where
  rationalityClosed : I.rationalityOverLocalField
  polesClosed : I.poles

def IgusaZetaFunctionClosed (A : AdmissibleClass) (Z : ZetaFunctionPackage A)
    (I : IgusaZetaFunctionPackage A Z) : Prop :=
  I.rationalityOverLocalField ∧ I.poles

theorem igusa_zeta_function_closed_from_evidence (A : AdmissibleClass) (Z : ZetaFunctionPackage A)
    (I : IgusaZetaFunctionPackage A Z) (E : IgusaZetaFunctionEvidence A Z I) :
    IgusaZetaFunctionClosed A Z I := by
  exact And.intro E.rationalityClosed E.polesClosed

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse