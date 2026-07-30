import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.FiniteLocalField

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure AffineSchemeOverFiniteLocalField (K : FiniteLocalField) where
  coordinateRing : Type u
  coordinateRingIsFinitelyPresented : Prop
  coordinateRingIsFlat : Prop
  coordinateRingIsSeparated : Prop
  coordinateRingIsComplete : Prop
  coordinateRingIsRegular : Prop

structure AffineSchemeEvidence {K : FiniteLocalField} (A : AffineSchemeOverFiniteLocalField K) where
  coordinateRingIsFinitelyPresentedClosed : A.coordinateRingIsFinitelyPresented
  coordinateRingIsFlatClosed : A.coordinateRingIsFlat
  coordinateRingIsSeparatedClosed : A.coordinateRingIsSeparated
  coordinateRingIsCompleteClosed : A.coordinateRingIsComplete
  coordinateRingIsRegularClosed : A.coordinateRingIsRegular

def AffineSchemeClosed {K : FiniteLocalField} (A : AffineSchemeOverFiniteLocalField K) : Prop :=
  A.coordinateRingIsFinitelyPresented ∧ A.coordinateRingIsFlat ∧
  A.coordinateRingIsSeparated ∧ A.coordinateRingIsComplete ∧ A.coordinateRingIsRegular

theorem affine_scheme_closed_from_evidence {K : FiniteLocalField} (A : AffineSchemeOverFiniteLocalField K) (E : AffineSchemeEvidence A) :
    AffineSchemeClosed A := by
  exact And.intro E.coordinateRingIsFinitelyPresentedClosed
    (And.intro E.coordinateRingIsFlatClosed
      (And.intro E.coordinateRingIsSeparatedClosed
        (And.intro E.coordinateRingIsCompleteClosed E.coordinateRingIsRegularClosed)))

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse