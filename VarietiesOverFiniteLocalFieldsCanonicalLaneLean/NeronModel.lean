import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.FiniteLocalField
import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.AffineSchemeOverFiniteLocalField

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure NeronModel (K : FiniteLocalField) (A : AffineSchemeOverFiniteLocalField K) where
  genericFiber : Type u
  specialFiber : Type v
  reductionMap : genericFiber → specialFiber
  genericFiberIsAbelianVariety : Prop
  specialFiberIsAlgebraicGroup : Prop
  reductionMapIsGroupHomomorphism : Prop
  reductionMapIsSurjective : Prop
  connectedComponentOfSpecialFiber : Prop
  connectedComponentIsTorus : Prop
  identityComponentIsSmooth : Prop

structure NeronModelEvidence {K : FiniteLocalField} {A : AffineSchemeOverFiniteLocalField K} (N : NeronModel K A) where
  genericFiberIsAbelianVarietyClosed : N.genericFiberIsAbelianVariety
  specialFiberIsAlgebraicGroupClosed : N.specialFiberIsAlgebraicGroup
  reductionMapIsGroupHomomorphismClosed : N.reductionMapIsGroupHomomorphism
  reductionMapIsSurjectiveClosed : N.reductionMapIsSurjective
  connectedComponentOfSpecialFiberClosed : N.connectedComponentOfSpecialFiber
  connectedComponentIsTorusClosed : N.connectedComponentIsTorus
  identityComponentIsSmoothClosed : N.identityComponentIsSmooth

def NeronModelClosed {K : FiniteLocalField} {A : AffineSchemeOverFiniteLocalField K} (N : NeronModel K A) : Prop :=
  N.genericFiberIsAbelianVariety ∧ N.specialFiberIsAlgebraicGroup ∧
  N.reductionMapIsGroupHomomorphism ∧ N.reductionMapIsSurjective ∧
  N.connectedComponentOfSpecialFiber ∧ N.connectedComponentIsTorus ∧
  N.identityComponentIsSmooth

theorem neron_model_closed_from_evidence {K : FiniteLocalField} {A : AffineSchemeOverFiniteLocalField K} (N : NeronModel K A) (E : NeronModelEvidence N) :
    NeronModelClosed N := by
  exact And.intro E.genericFiberIsAbelianVarietyClosed
    (And.intro E.specialFiberIsAlgebraicGroupClosed
      (And.intro E.reductionMapIsGroupHomomorphismClosed
        (And.intro E.reductionMapIsSurjectiveClosed
          (And.intro E.connectedComponentOfSpecialFiberClosed
            (And.intro E.connectedComponentIsTorusClosed E.identityComponentIsSmoothClosed)))))

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse