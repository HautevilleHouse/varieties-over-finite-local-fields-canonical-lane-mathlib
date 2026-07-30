import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.SchemesOverFiniteLocalFields

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure FrobeniusEndomorphism (k : FiniteLocalField) (X : SchemeOverFLF k) where
  frobeniusMap : X.underlyingScheme → X.underlyingScheme
  fixedPoints : Prop
  traceFormula : Prop
  cohomologicalInterpretation : Prop

def LefschetzTraceData {k : FiniteLocalField} {X : SchemeOverFLF k} (F : FrobeniusEndomorphism k X) : Prop :=
  F.fixedPoints ∧ F.traceFormula ∧ F.cohomologicalInterpretation

theorem lefschetz_trace_closed {k : FiniteLocalField} {X : SchemeOverFLF k} (F : FrobeniusEndomorphism k X) (h : F.fixedPoints ∧ F.traceFormula ∧ F.cohomologicalInterpretation) : LefschetzTraceData F := h

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse