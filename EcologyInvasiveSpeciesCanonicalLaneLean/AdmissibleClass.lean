import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure InvasiveSpeciesObject where
  species : Type
  environmentType : Type
  establishedPopulation : Prop
  spreadRate : Prop
  ecologicalImpact : Prop
  dispersalBarriers : Prop
  conclusion : establishedPopulation ∧ spreadRate ∧ ecologicalImpact ∧ dispersalBarriers

structure AdmissibleClass where
  object : InvasiveSpeciesObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse
