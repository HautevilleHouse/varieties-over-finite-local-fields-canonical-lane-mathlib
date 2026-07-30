import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VarietiesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse