import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

structure DispersalBarriersModel where
  geographicBarrier : Prop
  climaticBarrier : Prop
  reproductiveBarrier : Prop
  predationBarrier : Prop

def DispersalBarriersClosed (D : DispersalBarriersModel) : Prop :=
  D.geographicBarrier ∧ D.climaticBarrier ∧ D.reproductiveBarrier ∧ D.predationBarrier

structure DispersalBarriersEvidence (D : DispersalBarriersModel) where
  geographicBarrierClosed : D.geographicBarrier
  climaticBarrierClosed : D.climaticBarrier
  reproductiveBarrierClosed : D.reproductiveBarrier
  predationBarrierClosed : D.predationBarrier

theorem dispersal_barriers_closed_from_evidence (D : DispersalBarriersModel) (E : DispersalBarriersEvidence D) :
    DispersalBarriersClosed D := by
  exact And.intro E.geographicBarrierClosed
    (And.intro E.climaticBarrierClosed
      (And.intro E.reproductiveBarrierClosed E.predationBarrierClosed))

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse
