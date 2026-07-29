import EcologyInvasiveSpeciesCanonicalLaneLean.InvasionDynamics

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure InvasionSpiralPackage {I : InvasionDynamicsPackage} where
  initialInvasion : Prop
  dispersalKernel : Prop
  populationGrowth : Prop
  lagPhase : Prop
  exponentialGrowth : Prop
  saturationPhase : Prop
  spreadRate : Prop

structure InvasionSpiralEvidence {I : InvasionDynamicsPackage} (S : InvasionSpiralPackage I) where
  initialInvasionClosed : S.initialInvasion
  dispersalKernelClosed : S.dispersalKernel
  populationGrowthClosed : S.populationGrowth
  lagPhaseClosed : S.lagPhase
  exponentialGrowthClosed : S.exponentialGrowth
  saturationPhaseClosed : S.saturationPhase
  spreadRateClosed : S.spreadRate

def InvasionSpiralClosed {I : InvasionDynamicsPackage} (S : InvasionSpiralPackage I) : Prop :=
  S.initialInvasion ∧ S.dispersalKernel ∧ S.populationGrowth ∧
  S.lagPhase ∧ S.exponentialGrowth ∧ S.saturationPhase ∧ S.spreadRate

theorem invasion_spiral_closed_from_evidence
    {I : InvasionDynamicsPackage} (S : InvasionSpiralPackage I)
    (E : InvasionSpiralEvidence S) : InvasionSpiralClosed S := by
  exact And.intro E.initialInvasionClosed
    (And.intro E.dispersalKernelClosed
      (And.intro E.populationGrowthClosed
        (And.intro E.lagPhaseClosed
          (And.intro E.exponentialGrowthClosed
            (And.intro E.saturationPhaseClosed E.spreadRateClosed)))))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse