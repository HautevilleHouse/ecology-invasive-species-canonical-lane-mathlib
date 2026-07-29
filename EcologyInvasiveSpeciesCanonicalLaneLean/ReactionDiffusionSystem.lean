import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure ReactionDiffusionSystemPackage where
  speciesDensity : Type u → Type v
  diffusionCoefficient : ℝ
  reactionTerm : ℝ → ℝ
  spatialDomain : Type u
  boundaryCondition : Prop
  initialCondition : Prop
  wellPosedness : Prop

structure ReactionDiffusionSystemEvidence (R : ReactionDiffusionSystemPackage) where
  boundaryConditionClosed : R.boundaryCondition
  initialConditionClosed : R.initialCondition
  wellPosednessClosed : R.wellPosedness

def ReactionDiffusionSystemClosed (R : ReactionDiffusionSystemPackage) : Prop :=
  R.boundaryCondition ∧ R.initialCondition ∧ R.wellPosedness

theorem reaction_diffusion_system_closed_from_evidence
    (R : ReactionDiffusionSystemPackage) (E : ReactionDiffusionSystemEvidence R) :
    ReactionDiffusionSystemClosed R := by
  exact And.intro E.boundaryConditionClosed (And.intro E.initialConditionClosed E.wellPosednessClosed)

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse