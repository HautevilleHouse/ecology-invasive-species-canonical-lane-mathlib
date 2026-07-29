import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure InvasiveSpeciesModel where
  ecosystem : Type u
  nativeSpeciesCount : Nat
  invasiveSpeciesCount : Nat
  initialDensity : ecosystem → Prop
  introductionPathwayClosed : Prop
  establishmentRiskClosed : Prop
  spreadDynamicsClosed : Prop
  impactAssessmentClosed : Prop

def invasiveSpeciesClosed (M : InvasiveSpeciesModel) : Prop :=
  M.introductionPathwayClosed ∧ M.establishmentRiskClosed ∧
  M.spreadDynamicsClosed ∧ M.impactAssessmentClosed

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse