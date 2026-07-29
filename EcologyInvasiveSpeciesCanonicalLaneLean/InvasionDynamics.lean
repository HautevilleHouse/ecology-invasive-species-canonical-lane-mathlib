import EcologyInvasiveSpeciesCanonicalLaneLean.PopulationEcology

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure InvasionDynamicsPackage {P : PopulationEcologyPackage} where
  invasionThreshold : Prop
  dispersalDistance : Prop
  propagulePressure : Prop
  establishmentRate : Prop
  spreadVelocity : Prop
  lagDuration : Prop
  impactAssessment : Prop

structure InvasionDynamicsEvidence {P : PopulationEcologyPackage} (D : InvasionDynamicsPackage P) where
  invasionThresholdClosed : D.invasionThreshold
  dispersalDistanceClosed : D.dispersalDistance
  propagulePressureClosed : D.propagulePressure
  establishmentRateClosed : D.establishmentRate
  spreadVelocityClosed : D.spreadVelocity
  lagDurationClosed : D.lagDuration
  impactAssessmentClosed : D.impactAssessment

def InvasionDynamicsClosed {P : PopulationEcologyPackage} (D : InvasionDynamicsPackage P) : Prop :=
  D.invasionThreshold ∧ D.dispersalDistance ∧ D.propagulePressure ∧
  D.establishmentRate ∧ D.spreadVelocity ∧ D.lagDuration ∧ D.impactAssessment

theorem invasion_dynamics_closed_from_evidence
    {P : PopulationEcologyPackage} (D : InvasionDynamicsPackage P)
    (E : InvasionDynamicsEvidence D) : InvasionDynamicsClosed D := by
  exact And.intro E.invasionThresholdClosed
    (And.intro E.dispersalDistanceClosed
      (And.intro E.propagulePressureClosed
        (And.intro E.establishmentRateClosed
          (And.intro E.spreadVelocityClosed
            (And.intro E.lagDurationClosed E.impactAssessmentClosed)))))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse