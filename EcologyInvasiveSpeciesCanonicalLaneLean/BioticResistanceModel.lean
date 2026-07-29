import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure BioticResistancePackage where
  nativeCompetitionStrength : ℝ
  predationPressure : ℝ
  diseaseResistance : ℝ
  mutualisticInteractions : Prop
  enemyRelease : Prop
  novelWeapons : Prop

structure BioticResistanceEvidence (B : BioticResistancePackage) where
  enemyReleaseClosed : B.enemyRelease
  novelWeaponsClosed : B.novelWeapons
  mutualisticInteractionsClosed : B.mutualisticInteractions

def BioticResistanceClosed (B : BioticResistancePackage) : Prop :=
  B.enemyRelease ∧ B.novelWeapons ∧ B.mutualisticInteractions

theorem biotic_resistance_closed_from_evidence
    (B : BioticResistancePackage) (E : BioticResistanceEvidence B) :
    BioticResistanceClosed B := by
  exact And.intro E.enemyReleaseClosed (And.intro E.novelWeaponsClosed E.mutualisticInteractionsClosed)

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse