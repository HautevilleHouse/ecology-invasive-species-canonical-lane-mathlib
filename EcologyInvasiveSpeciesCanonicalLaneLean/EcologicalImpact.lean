import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure EcologicalImpactModel where
  trophicDisruption : Prop
  competitionExclusion : Prop
  habitatAlteration : Prop
  diseaseTransmission : Prop

def EcologicalImpactClosed (I : EcologicalImpactModel) : Prop :=
  I.trophicDisruption ∧ I.competitionExclusion ∧ I.habitatAlteration ∧ I.diseaseTransmission

structure EcologicalImpactEvidence (I : EcologicalImpactModel) where
  trophicDisruptionClosed : I.trophicDisruption
  competitionExclusionClosed : I.competitionExclusion
  habitatAlterationClosed : I.habitatAlteration
  diseaseTransmissionClosed : I.diseaseTransmission

theorem ecological_impact_closed_from_evidence (I : EcologicalImpactModel) (E : EcologicalImpactEvidence I) :
    EcologicalImpactClosed I := by
  exact And.intro E.trophicDisruptionClosed
    (And.intro E.competitionExclusionClosed
      (And.intro E.habitatAlterationClosed E.diseaseTransmissionClosed))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse
