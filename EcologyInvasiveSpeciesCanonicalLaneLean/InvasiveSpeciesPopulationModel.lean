import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure InvasiveSpeciesPopulationPackage where
  carryingCapacity : ℝ
  growthRate : ℝ
  initialDensity : ℝ
  dispersalRate : ℝ
  timeDomain : Type u
  densityFunction : timeDomain → ℝ
  logisticGrowthTerm : Prop
  diffusionTerm : Prop
  initialConditionMet : Prop

structure InvasiveSpeciesPopulationEvidence (P : InvasiveSpeciesPopulationPackage) where
  logisticGrowthClosed : P.logisticGrowthTerm
  diffusionClosed : P.diffusionTerm
  initialConditionClosed : P.initialConditionMet

def InvasiveSpeciesPopulationClosed (P : InvasiveSpeciesPopulationPackage) : Prop :=
  P.logisticGrowthTerm ∧ P.diffusionTerm ∧ P.initialConditionMet

theorem invasive_species_population_closed_from_evidence
    (P : InvasiveSpeciesPopulationPackage) (E : InvasiveSpeciesPopulationEvidence P) :
    InvasiveSpeciesPopulationClosed P := by
  exact And.intro E.logisticGrowthClosed (And.intro E.diffusionClosed E.initialConditionClosed)

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse