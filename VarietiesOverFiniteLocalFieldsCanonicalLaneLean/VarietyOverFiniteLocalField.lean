import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.FiniteLocalFieldsStructure

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure VarietyOverFiniteLocalField (R : FiniteLocalField) where
  ambientSpace : ℙ^n (FiniteLocalField.carrier R)  -- projective space for some n
  definingEquations : List (Polynomial (FiniteLocalField.carrier R))
  smooth : Prop
  dimension : ℕ
  closedPointCount : ℕ
  zetaFunctionDefined : Prop

structure VarietyEvidence (R : FiniteLocalField) (V : VarietyOverFiniteLocalField R) where
  smoothClosed : V.smooth
  dimensionClosed : V.dimension = (Fintype.card (FiniteLocalField.carrier R)) - 1
  closedPointCountConsistent : V.closedPointCount = (Nat.card (V.ambientSpace)) mod (FiniteLocalField.residueFieldChar R)
  zetaFunctionDefinedClosed : V.zetaFunctionDefined

def VarietyClosed (R : FiniteLocalField) (V : VarietyOverFiniteLocalField R) : Prop :=
  V.smooth ∧ V.zetaFunctionDefined

theorem variety_closed_from_evidence (R : FiniteLocalField) (V : VarietyOverFiniteLocalField R) (E : VarietyEvidence R V) : VarietyClosed R V := by
  exact And.intro E.smoothClosed E.zetaFunctionDefinedClosed

end HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse