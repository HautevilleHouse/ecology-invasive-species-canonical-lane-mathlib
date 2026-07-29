import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure EcosystemImpactModel where
  ecosystem : Type u
  invasiveSpecies : InvasiveSpeciesModel
  biodiversityLoss : Prop
  ecosystemFunctionDisruption : Prop
  economicDamage : Prop
  humanHealthRisk : Prop
  biodiversityLossClosed : biodiversityLoss
  functionDisruptionClosed : ecosystemFunctionDisruption
  economicDamageClosed : economicDamage
  healthRiskClosed : humanHealthRisk

def ecosystemImpactClosed (E : EcosystemImpactModel) : Prop :=
  E.biodiversityLossClosed ∧ E.functionDisruptionClosed ∧
  E.economicDamageClosed ∧ E.healthRiskClosed

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse