import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure BrauerManinObstructionPackage where
  globalField : Type u
  varietyOverGlobalField : Type v
  adelicPoints : Type w
  brauerGroup : Type x
  brauerManinPairing : adelicPoints -> brauerGroup -> Prop
  hassePrincipleHolds : Prop
  obstructionsComputed : Prop
  evaluationMap : adelicPoints -> Prop

structure BrauerManinObstructionEvidence (B : BrauerManinObstructionPackage) where
  hassePrincipleHoldsClosed : B.hassePrincipleHolds
  obstructionsComputedClosed : B.obstructionsComputed
  evaluationMapClosed : B.evaluationMap

def BrauerManinObstructionClosed (B : BrauerManinObstructionPackage) : Prop :=
  B.hassePrincipleHolds ∧ B.obstructionsComputed ∧ B.evaluationMap

theorem brauer_manin_obstruction_closed_from_evidence
    (B : BrauerManinObstructionPackage) (E : BrauerManinObstructionEvidence B) :
    BrauerManinObstructionClosed B := by
  exact And.intro E.hassePrincipleHoldsClosed
    (And.intro E.obstructionsComputedClosed E.evaluationMapClosed)

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse
