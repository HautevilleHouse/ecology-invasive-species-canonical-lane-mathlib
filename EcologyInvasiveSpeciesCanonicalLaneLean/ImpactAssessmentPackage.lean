import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure ImpactAssessmentPackage where
  ecologicalImpact : Prop
  economicCost : Prop
  biodiversityLoss : Prop
  ecosystemServiceDisruption : Prop
  managementCost : Prop

structure ImpactAssessmentEvidence (I : ImpactAssessmentPackage) where
  ecologicalImpactClosed : I.ecologicalImpact
  economicCostClosed : I.economicCost
  biodiversityLossClosed : I.biodiversityLoss
  ecosystemServiceDisruptionClosed : I.ecosystemServiceDisruption
  managementCostClosed : I.managementCost

def ImpactAssessmentClosed (I : ImpactAssessmentPackage) : Prop :=
  I.ecologicalImpact ∧ I.economicCost ∧ I.biodiversityLoss ∧ I.ecosystemServiceDisruption ∧ I.managementCost

theorem impact_assessment_closed_from_evidence (I : ImpactAssessmentPackage) (E : ImpactAssessmentEvidence I) :
    ImpactAssessmentClosed I := by
  exact And.intro E.ecologicalImpactClosed
    (And.intro E.economicCostClosed
      (And.intro E.biodiversityLossClosed
        (And.intro E.ecosystemServiceDisruptionClosed E.managementCostClosed)))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse