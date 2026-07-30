import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure FiniteLocalField where
  carrier : Type
  characteristic : ℕ
  residueField : Type
  discreteValuation : Prop
  finiteResidue : Prop
  structureSheaf : Prop

structure SchemeOverFLF (k : FiniteLocalField) where
  underlyingScheme : Type
  topology : TopologicalSpace underlyingScheme
  structureSheaf : Prop
  localMorphism : Prop
  finiteType : Prop
  separated : Prop

structure EtaleCohomologyPackage (k : FiniteLocalField) (X : SchemeOverFLF k) where
  ladicCohomology : Type
  galoisAction : Prop
  finiteness : Prop
  poincareDuality : Prop
  vanishingCycles : Prop

def EtaleCohomologyClosed (k : FiniteLocalField) (X : SchemeOverFLF k) (E : EtaleCohomologyPackage k X) : Prop :=
  E.galoisAction ∧ E.finiteness ∧ E.poincareDuality ∧ E.vanishingCycles

theorem etale_cohomology_closed_from_evidence (k : FiniteLocalField) (X : SchemeOverFLF k) (E : EtaleCohomologyPackage k X) (h : E.galoisAction ∧ E.finiteness ∧ E.poincareDuality ∧ E.vanishingCycles) : EtaleCohomologyClosed k X E := h

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse