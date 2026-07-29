import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HassePrincipleSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  adeleRing : Type
  topologyAdele : TopologicalSpace adeleRing

structure HassePrincipleAdmittedObject where
  space : HassePrincipleSpace
  globalField : Type
  valuationsSet : Type
  isotropyAtAllPlaces : Prop
  isotropyOverGlobalField : Prop
  conclusion : isotropyAtAllPlaces ∧ isotropyOverGlobalField

structure HassePrincipleEndgameState where
  object : HassePrincipleAdmittedObject

def HassePrincipleWitnessClosed (O : HassePrincipleAdmittedObject) : Prop :=
  O.isotropyAtAllPlaces ∧ O.isotropyOverGlobalField

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse
