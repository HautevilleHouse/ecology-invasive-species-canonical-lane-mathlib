import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure ControlStrategyModel where
  targetSpecies : InvasiveSpeciesModel
  preventionMethod : Prop
  earlyDetectionMethod : Prop
  rapidResponseCapacity : Prop
  eradicationFeasibility : Prop
  longTermManagementPlan : Prop
  preventionClosed : preventionMethod
  earlyDetectionClosed : earlyDetectionMethod
  rapidResponseClosed : rapidResponseCapacity
  eradicationClosed : eradicationFeasibility
  managementClosed : longTermManagementPlan

def controlStrategyClosed (C : ControlStrategyModel) : Prop :=
  C.preventioClosed ∧ C.earlyDetectionClosed ∧ C.rapidResponseClosed ∧
  C.eradicationClosed ∧ C.managementClosed

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse