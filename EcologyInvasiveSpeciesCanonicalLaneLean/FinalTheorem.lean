import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

def ConstrainedInvasiveSpeciesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_invasive_species_endgame (A : AdmissibleClass) :
    ConstrainedInvasiveSpeciesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse
