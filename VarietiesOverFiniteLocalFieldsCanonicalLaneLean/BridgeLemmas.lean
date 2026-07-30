import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VarietiesWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse