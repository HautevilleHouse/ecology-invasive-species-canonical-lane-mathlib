import EcologyInvasiveSpeciesCanonicalLaneLean.InvasionRiskAssessment

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure ManagementPackage {A : AdmissibleClass} {M : SpreadModelPackage A} {R : InvasionRiskPackage M} where
  preventionMeasures : Prop
  earlyDetection : Prop
  rapidResponse : Prop
  longTermControl : Prop

structure ManagementEvidence {A : AdmissibleClass} {M : SpreadModelPackage A} {R : InvasionRiskPackage M} (G : ManagementPackage R) where
  preventionMeasuresClosed : G.preventionMeasures
  earlyDetectionClosed : G.earlyDetection
  rapidResponseClosed : G.rapidResponse
  longTermControlClosed : G.longTermControl

def ManagementClosed {A : AdmissibleClass} {M : SpreadModelPackage A} {R : InvasionRiskPackage M} (G : ManagementPackage R) : Prop :=
  G.preventionMeasures ∧ G.earlyDetection ∧ G.rapidResponse ∧ G.longTermControl

theorem management_closed_from_evidence {A : AdmissibleClass} {M : SpreadModelPackage A} {R : InvasionRiskPackage M} (G : ManagementPackage R) (E : ManagementEvidence G) : ManagementClosed G := by
  exact And.intro E.preventionMeasuresClosed (And.intro E.earlyDetectionClosed (And.intro E.rapidResponseClosed E.longTermControlClosed))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse