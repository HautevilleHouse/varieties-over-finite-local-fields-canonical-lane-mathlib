import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure DeRhamCohomologyPackage where
  algebraicDeRhamComplex : Prop
  hypercohomology : Prop
  hodgeFiltration : Prop
  hodgeToDeRhamSpectralSequence : Prop
  comparisonWithSingular : Prop

def DeRhamCohomologyClosed (D : DeRhamCohomologyPackage) : Prop :=
  D.algebraicDeRhamComplex ∧ D.hypercohomology ∧ D.hodgeFiltration ∧
  D.hodgeToDeRhamSpectralSequence ∧ D.comparisonWithSingular

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse
