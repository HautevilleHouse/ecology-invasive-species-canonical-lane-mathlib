import EcologyInvasiveSpeciesCanonicalLaneLean.InvasiveSpeciesAdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure SpreadModelPackage (A : AdmissibleClass) where
  dispersalKernel : Prop
  populationGrowth : Prop
  habitatConnectivity : Prop
  controlMeasures : Prop

structure SpreadModelEvidence {A : AdmissibleClass} (M : SpreadModelPackage A) where
  dispersalKernelClosed : M.dispersalKernel
  populationGrowthClosed : M.populationGrowth
  habitatConnectivityClosed : M.habitatConnectivity
  controlMeasuresClosed : M.controlMeasures

def SpreadModelClosed {A : AdmissibleClass} (M : SpreadModelPackage A) : Prop :=
  M.dispersalKernel ∧ M.populationGrowth ∧ M.habitatConnectivity ∧ M.controlMeasures

theorem spread_model_closed_from_evidence {A : AdmissibleClass} (M : SpreadModelPackage A) (E : SpreadModelEvidence M) : SpreadModelClosed M := by
  exact And.intro E.dispersalKernelClosed (And.intro E.populationGrowthClosed (And.intro E.habitatConnectivityClosed E.controlMeasuresClosed))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse