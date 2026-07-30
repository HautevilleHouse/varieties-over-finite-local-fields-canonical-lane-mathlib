import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure RigidCohomologyPackage where
  overconvergentSheaf : Prop
  MonskyWashnitzerComparison : Prop
  finitenessTheorem : Prop
  poincareDuality : Prop
  lefschetzTraceFormula : Prop

def RigidCohomologyClosed (R : RigidCohomologyPackage) : Prop :=
  R.overconvergentSheaf ∧ R.MonskyWashnitzerComparison ∧ R.finitenessTheorem ∧
  R.poincareDuality ∧ R.lefschetzTraceFormula

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse
