import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure ManagementControlPackage where
  removalRate : ℝ
  biologicalControl : Prop
  containmentBarrier : ℝ
  economicCost : ℝ
  removalFeasible : Prop
  biologicalControlAvailable : Prop
  containmentEffective : Prop
  costWithinBudget : Prop

structure ManagementControlEvidence (M : ManagementControlPackage) where
  removalFeasibleClosed : M.removalFeasible
  biologicalControlAvailableClosed : M.biologicalControlAvailable
  containmentEffectiveClosed : M.containmentEffective
  costWithinBudgetClosed : M.costWithinBudget

def ManagementControlClosed (M : ManagementControlPackage) : Prop :=
  M.removalFeasible ∧ M.biologicalControlAvailable ∧
  M.containmentEffective ∧ M.costWithinBudget

theorem management_control_closed_from_evidence
    (M : ManagementControlPackage) (E : ManagementControlEvidence M) :
    ManagementControlClosed M := by
  exact And.intro E.removalFeasibleClosed
    (And.intro E.biologicalControlAvailableClosed
      (And.intro E.containmentEffectiveClosed E.costWithinBudgetClosed))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse