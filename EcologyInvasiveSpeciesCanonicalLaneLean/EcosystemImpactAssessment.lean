import EcologyInvasiveSpeciesCanonicalLaneLean.ManagementStrategy

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure EcosystemImpactPackage {A : AdmissibleClass} {M : SpreadModelPackage A} {R : InvasionRiskPackage M} {G : ManagementPackage R} where
  biodiversityLoss : Prop
  ecosystemFunctionAlteration : Prop
  economicCost : Prop
  humanHealthRisk : Prop

structure EcosystemImpactEvidence {A : AdmissibleClass} {M : SpreadModelPackage A} {R : InvasionRiskPackage M} {G : ManagementPackage R} (I : EcosystemImpactPackage G) where
  biodiversityLossClosed : I.biodiversityLoss
  ecosystemFunctionAlterationClosed : I.ecosystemFunctionAlteration
  economicCostClosed : I.economicCost
  humanHealthRiskClosed : I.humanHealthRisk

def EcosystemImpactClosed {A : AdmissibleClass} {M : SpreadModelPackage A} {R : InvasionRiskPackage M} {G : ManagementPackage R} (I : EcosystemImpactPackage G) : Prop :=
  I.biodiversityLoss ∧ I.ecosystemFunctionAlteration ∧ I.economicCost ∧ I.humanHealthRisk

theorem ecosystem_impact_closed_from_evidence {A : AdmissibleClass} {M : SpreadModelPackage A} {R : InvasionRiskPackage M} {G : ManagementPackage R} (I : EcosystemImpactPackage G) (E : EcosystemImpactEvidence I) : EcosystemImpactClosed I := by
  exact And.intro E.biodiversityLossClosed (And.intro E.ecosystemFunctionAlterationClosed (And.intro E.economicCostClosed E.humanHealthRiskClosed))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse