import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure CrystallineCohomologyPackage where
  dividedPowerEnvelope : Prop
  hypercohomologySheaf : Prop
  comparisonWithDeRham : Prop
  frobeniusAction : Prop
  slopeFiltration : Prop

def CrystallineCohomologyClosed (C : CrystallineCohomologyPackage) : Prop :=
  C.dividedPowerEnvelope ∧ C.hypercohomologySheaf ∧ C.comparisonWithDeRham ∧
  C.frobeniusAction ∧ C.slopeFiltration

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse
