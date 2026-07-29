import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure ManagementInterventionPackage where
  preventionMeasures : Prop
  earlyDetection : Prop
  rapidResponse : Prop
  containmentStrategies : Prop
  eradicationFeasibility : Prop
  longTermControl : Prop

structure ManagementInterventionEvidence (M : ManagementInterventionPackage) where
  preventionMeasuresClosed : M.preventionMeasures
  earlyDetectionClosed : M.earlyDetection
  rapidResponseClosed : M.rapidResponse
  containmentStrategiesClosed : M.containmentStrategies
  eradicationFeasibilityClosed : M.eradicationFeasibility
  longTermControlClosed : M.longTermControl

def ManagementInterventionClosed (M : ManagementInterventionPackage) : Prop :=
  M.preventionMeasures ∧ M.earlyDetection ∧ M.rapidResponse ∧ M.containmentStrategies ∧ M.eradicationFeasibility ∧ M.longTermControl

theorem management_intervention_closed_from_evidence (M : ManagementInterventionPackage) (E : ManagementInterventionEvidence M) :
    ManagementInterventionClosed M := by
  exact And.intro E.preventionMeasuresClosed
    (And.intro E.earlyDetectionClosed
      (And.intro E.rapidResponseClosed
        (And.intro E.containmentStrategiesClosed
          (And.intro E.eradicationFeasibilityClosed E.longTermControlClosed))))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse