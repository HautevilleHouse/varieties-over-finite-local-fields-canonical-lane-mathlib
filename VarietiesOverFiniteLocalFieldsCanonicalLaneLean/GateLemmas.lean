import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse