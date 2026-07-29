import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure InvasionFrontSpeedPackage where
  waveSpeed : ℝ
  pulledFront : Prop
  pushedFront : Prop
  accelerationMechanism : Prop
  speedFormula : Prop
  formulaComputed : Prop

structure InvasionFrontSpeedEvidence (F : InvasionFrontSpeedPackage) where
  pulledFrontClosed : F.pulledFront
  pushedFrontClosed : F.pushedFront
  accelerationMechanismClosed : F.accelerationMechanism
  formulaComputedClosed : F.formulaComputed

def InvasionFrontSpeedClosed (F : InvasionFrontSpeedPackage) : Prop :=
  F.pulledFront ∧ F.pushedFront ∧ F.accelerationMechanism ∧ F.formulaComputed

theorem invasion_front_speed_closed_from_evidence
    (F : InvasionFrontSpeedPackage) (E : InvasionFrontSpeedEvidence F) :
    InvasionFrontSpeedClosed F := by
  exact And.intro E.pulledFrontClosed
    (And.intro E.pushedFrontClosed
      (And.intro E.accelerationMechanismClosed E.formulaComputedClosed))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse