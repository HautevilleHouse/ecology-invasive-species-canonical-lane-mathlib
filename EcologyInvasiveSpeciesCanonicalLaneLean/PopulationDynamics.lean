import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure PopulationDynamicsModel where
  intrinsicGrowth : Prop
  carryingCapacity : Prop
  lagPhase : Prop
  exponentialPhase : Prop
  logisticPhase : Prop

def PopulationDynamicsClosed (M : PopulationDynamicsModel) : Prop :=
  M.intrinsicGrowth ∧ M.carryingCapacity ∧ M.lagPhase ∧ M.exponentialPhase ∧ M.logisticPhase

structure PopulationDynamicsEvidence (M : PopulationDynamicsModel) where
  intrinsicGrowthClosed : M.intrinsicGrowth
  carryingCapacityClosed : M.carryingCapacity
  lagPhaseClosed : M.lagPhase
  exponentialPhaseClosed : M.exponentialPhase
  logisticPhaseClosed : M.logisticPhase

theorem population_dynamics_closed_from_evidence (M : PopulationDynamicsModel) (E : PopulationDynamicsEvidence M) :
    PopulationDynamicsClosed M := by
  exact And.intro E.intrinsicGrowthClosed
    (And.intro E.carryingCapacityClosed
      (And.intro E.lagPhaseClosed
        (And.intro E.exponentialPhaseClosed E.logisticPhaseClosed)))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse
