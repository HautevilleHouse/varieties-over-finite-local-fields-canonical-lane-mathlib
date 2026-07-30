import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure ArithmeticDualityPackage where
  artinVerdierDuality : Prop
  poitouTateDuality : Prop
  localLanglandsCompatibility : Prop
  eulerCharacteristicFormula : Prop
  tamagawaNumberFiniteness : Prop

def ArithmeticDualityClosed (A : ArithmeticDualityPackage) : Prop :=
  A.artinVerdierDuality ∧ A.poitouTateDuality ∧ A.localLanglandsCompatibility ∧
  A.eulerCharacteristicFormula ∧ A.tamagawaNumberFiniteness

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse
