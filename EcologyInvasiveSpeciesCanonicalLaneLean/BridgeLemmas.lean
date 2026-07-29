import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let obj := A.object
  obj.establishedPopulation ∧ obj.spreadRate ∧ obj.ecologicalImpact ∧ obj.dispersalBarriers

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  let obj := A.object
  exact obj.conclusion

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse
