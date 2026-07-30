import HautevilleHouse.VarietiesOverFiniteLocalFieldsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace VarietiesOverFiniteLocalFieldsCanonicalLaneLean

def ConstrainedVarietiesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_varieties_endgame (A : AdmissibleClass) :
    ConstrainedVarietiesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VarietiesOverFiniteLocalFieldsCanonicalLaneLean
end HautevilleHouse