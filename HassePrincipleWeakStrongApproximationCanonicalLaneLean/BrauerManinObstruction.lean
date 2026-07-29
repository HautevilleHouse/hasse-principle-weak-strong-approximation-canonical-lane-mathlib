import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure BrauerManinObstructionPackage where
  variety : Type u
  brauerGroup : Type v
  maninSet : Type w
  obstructionVanishes : Prop

structure BrauerManinObstructionEvidence (B : BrauerManinObstructionPackage) where
  obstructionVanishesClosed : B.obstructionVanishes

def BrauerManinObstructionClosed (B : BrauerManinObstructionPackage) : Prop :=
  B.obstructionVanishes

theorem brauer_manin_obstruction_closed_from_evidence (B : BrauerManinObstructionPackage) (E : BrauerManinObstructionEvidence B) :
    BrauerManinObstructionClosed B := by
  exact E.obstructionVanishesClosed

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse