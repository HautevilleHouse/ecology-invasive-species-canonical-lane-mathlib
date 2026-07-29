import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure SpreadKernelPackage where
  kernelType : Type u
  kernelFunction : ℝ → ℝ
  dispersalDistanceDistribution : Prop
  longDistanceDispersal : Prop
  fatTails : Prop
  momentGeneratingFunction : Prop

structure SpreadKernelEvidence (K : SpreadKernelPackage) where
  dispersalDistanceDistributionClosed : K.dispersalDistanceDistribution
  longDistanceDispersalClosed : K.longDistanceDispersal
  fatTailsClosed : K.fatTails
  momentGeneratingFunctionClosed : K.momentGeneratingFunction

def SpreadKernelClosed (K : SpreadKernelPackage) : Prop :=
  K.dispersalDistanceDistribution ∧ K.longDistanceDispersal ∧
  K.fatTails ∧ K.momentGeneratingFunction

theorem spread_kernel_closed_from_evidence
    (K : SpreadKernelPackage) (E : SpreadKernelEvidence K) :
    SpreadKernelClosed K := by
  exact And.intro E.dispersalDistanceDistributionClosed
    (And.intro E.longDistanceDispersalClosed
      (And.intro E.fatTailsClosed E.momentGeneratingFunctionClosed))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse