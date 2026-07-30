import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure SmoothModelPackage where
  properFlatPresentation : Prop
  pseudoBaseChange : Prop
  crystallineComparison : Prop
  convergentComparison : Prop
  overconvergentComparison : Prop
  signFunctionConsistency : Prop

def SmoothModelClosed (S : SmoothModelPackage) : Prop :=
  S.properFlatPresentation ∧ S.pseudoBaseChange ∧ S.crystallineComparison ∧
  S.convergentComparison ∧ S.overconvergentComparison ∧ S.signFunctionConsistency

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse
