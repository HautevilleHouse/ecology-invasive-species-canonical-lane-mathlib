import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure ManagementControlModel where
  preventionFeasible : Prop
  earlyDetectionValid : Prop
  eradicationPossible : Prop
  containmentEffective : Prop

def ManagementControlClosed (M : ManagementControlModel) : Prop :=
  M.preventionFeasible ∧ M.earlyDetectionValid ∧ M.eradicationPossible ∧ M.containmentEffective

structure ManagementControlEvidence (M : ManagementControlModel) where
  preventionFeasibleClosed : M.preventionFeasible
  earlyDetectionValidClosed : M.earlyDetectionValid
  eradicationPossibleClosed : M.eradicationPossible
  containmentEffectiveClosed : M.containmentEffective

theorem management_control_closed_from_evidence (M : ManagementControlModel) (E : ManagementControlEvidence M) :
    ManagementControlClosed M := by
  exact And.intro E.preventionFeasibleClosed
    (And.intro E.earlyDetectionValidClosed
      (And.intro E.eradicationPossibleClosed E.containmentEffectiveClosed))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse
