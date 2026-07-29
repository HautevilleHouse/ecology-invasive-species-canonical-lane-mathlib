import EcologyInvasiveSpeciesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EcologyInvasiveSpeciesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure InvasiveSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure InvasiveAdmittedObject where
  space : InvasiveSpace
  invadedEcosystem : Prop
  invasiveSpeciesPresent : Prop
  damageModel : Type
  damageTopology : TopologicalSpace damageModel
  invasionSpreads : Prop
  conclusion : invasionSpreads

structure InvasiveEndgameState where
  object : InvasiveAdmittedObject

def InvasiveWitnessClosed (O : InvasiveAdmittedObject) : Prop :=
  O.invasionSpreads

end EcologyInvasiveSpeciesCanonicalLaneLean
end HautevilleHouse