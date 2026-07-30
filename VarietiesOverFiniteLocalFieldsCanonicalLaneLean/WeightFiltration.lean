import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure WeightFiltrationPackage where
  weightSpectralSequence : Prop
  purity : Prop
  hardLefschetz : Prop
  weilConjecturesLocal : Prop
  bettiNumbersGaloisRepresentation : Prop

def WeightFiltrationClosed (W : WeightFiltrationPackage) : Prop :=
  W.weightSpectralSequence ∧ W.purity ∧ W.hardLefschetz ∧
  W.weilConjecturesLocal ∧ W.bettiNumbersGaloisRepresentation

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse
