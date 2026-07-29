import HautevilleHouse.HassePrincipleWeakStrongApproximationCanonicalLaneLean.HassePrincipleObjects

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure GlobalLocalPackage (K : NumberField) where
  brauerGroup : Type
  brauerGroupHasse : Prop
  localInvariant : Type
  hassePrincipleForBrauer : Prop
  weakApproximationForBrauer : Prop

structure GlobalLocalEvidence {K : NumberField} (G : GlobalLocalPackage K) where
  brauerGroupHolds : G.brauerGroupHasse
  hassePrincipleHolds : G.hassePrincipleForBrauer
  weakApproximationHolds : G.weakApproximationForBrauer

def GlobalLocalClosed {K : NumberField} (G : GlobalLocalPackage K) : Prop :=
  G.brauerGroupHasse ∧ G.hassePrincipleForBrauer ∧ G.weakApproximationForBrauer

theorem global_local_closed_from_evidence
    {K : NumberField} (G : GlobalLocalPackage K) (E : GlobalLocalEvidence G) :
    GlobalLocalClosed G := by
  exact And.intro E.brauerGroupHolds (And.intro E.hassePrincipleHolds E.weakApproximationHolds)

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse
