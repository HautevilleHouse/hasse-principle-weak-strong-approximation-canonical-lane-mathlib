import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

def ConstrainedHasseClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hasse_endgame (A : AdmissibleClass) :
    ConstrainedHasseClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse
