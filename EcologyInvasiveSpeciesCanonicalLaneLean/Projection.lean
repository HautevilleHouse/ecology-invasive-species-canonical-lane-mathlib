import EcologyInvasiveSpeciesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def invasiveProjection : Projection InvasiveEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem invasive_projection_idempotent (x : InvasiveEndgameState) :
    invasiveProjection.toFun (invasiveProjection.toFun x) = invasiveProjection.toFun x := by
  exact invasiveProjection.idempotent x

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse