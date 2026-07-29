import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure PopulationEcologyPackage where
  carryingCapacity : Prop
  growthRate : Prop
  competitionCoefficient : Prop
  predationPressure : Prop
  habitatSuitability : Prop
  demographicStochasticity : Prop

structure PopulationEcologyEvidence (P : PopulationEcologyPackage) where
  carryingCapacityClosed : P.carryingCapacity
  growthRateClosed : P.growthRate
  competitionCoefficientClosed : P.competitionCoefficient
  predationPressureClosed : P.predationPressure
  habitatSuitabilityClosed : P.habitatSuitability
  demographicStochasticityClosed : P.demographicStochasticity

def PopulationEcologyClosed (P : PopulationEcologyPackage) : Prop :=
  P.carryingCapacity ∧ P.growthRate ∧ P.competitionCoefficient ∧
  P.predationPressure ∧ P.habitatSuitability ∧ P.demographicStochasticity

theorem population_ecology_closed_from_evidence
    (P : PopulationEcologyPackage) (E : PopulationEcologyEvidence P) :
    PopulationEcologyClosed P := by
  exact And.intro E.carryingCapacityClosed
    (And.intro E.growthRateClosed
      (And.intro E.competitionCoefficientClosed
        (And.intro E.predationPressureClosed
          (And.intro E.habitatSuitabilityClosed E.demographicStochasticityClosed))))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse