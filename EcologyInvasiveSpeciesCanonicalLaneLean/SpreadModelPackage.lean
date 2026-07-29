import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure SpreadModelPackage where
  landscapeConnectivity : Prop
  dispersalKernel : Prop
  establishmentProbability : Prop
  spreadRate : Prop
  initialConditions : Prop

structure SpreadModelEvidence (S : SpreadModelPackage) where
  landscapeConnectivityClosed : S.landscapeConnectivity
  dispersalKernelClosed : S.dispersalKernel
  establishmentProbabilityClosed : S.establishmentProbability
  spreadRateClosed : S.spreadRate
  initialConditionsClosed : S.initialConditions

def SpreadModelClosed (S : SpreadModelPackage) : Prop :=
  S.landscapeConnectivity ∧ S.dispersalKernel ∧ S.establishmentProbability ∧ S.spreadRate ∧ S.initialConditions

theorem spread_model_closed_from_evidence (S : SpreadModelPackage) (E : SpreadModelEvidence S) :
    SpreadModelClosed S := by
  exact And.intro E.landscapeConnectivityClosed
    (And.intro E.dispersalKernelClosed
      (And.intro E.establishmentProbabilityClosed
        (And.intro E.spreadRateClosed E.initialConditionsClosed)))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse