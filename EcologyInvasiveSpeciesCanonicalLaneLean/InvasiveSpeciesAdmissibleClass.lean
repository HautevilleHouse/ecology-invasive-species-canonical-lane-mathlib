import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure InvasiveSpeciesAdmittedObject where
  ecosystem : Type u
  speciesPool : Type v
  invasionDynamics : Prop
  spreadModel : Prop
  impactModel : Prop
  managementAction : Prop
  conclusion : invasionDynamics ∧ spreadModel ∧ impactModel

structure AdmissibleClass where
  object : InvasiveSpeciesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.managementAction) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse