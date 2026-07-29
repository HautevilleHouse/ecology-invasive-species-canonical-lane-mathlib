import EcologyInvasiveSpeciesCanonicalLaneLean.SpreadModelBridge

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure InvasionRiskPackage {A : AdmissibleClass} (M : SpreadModelPackage A) where
  establishmentRisk : Prop
  spreadRisk : Prop
  impactRisk : Prop
  cumulativeRiskScore : Prop

structure InvasionRiskEvidence {A : AdmissibleClass} {M : SpreadModelPackage A} (R : InvasionRiskPackage M) where
  establishmentRiskClosed : R.establishmentRisk
  spreadRiskClosed : R.spreadRisk
  impactRiskClosed : R.impactRisk
  cumulativeRiskScoreClosed : R.cumulativeRiskScore

def InvasionRiskClosed {A : AdmissibleClass} {M : SpreadModelPackage A} (R : InvasionRiskPackage M) : Prop :=
  R.establishmentRisk ∧ R.spreadRisk ∧ R.impactRisk ∧ R.cumulativeRiskScore

theorem invasion_risk_closed_from_evidence {A : AdmissibleClass} {M : SpreadModelPackage A} (R : InvasionRiskPackage M) (E : InvasionRiskEvidence R) : InvasionRiskClosed R := by
  exact And.intro E.establishmentRiskClosed (And.intro E.spreadRiskClosed (And.intro E.impactRiskClosed E.cumulativeRiskScoreClosed))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse