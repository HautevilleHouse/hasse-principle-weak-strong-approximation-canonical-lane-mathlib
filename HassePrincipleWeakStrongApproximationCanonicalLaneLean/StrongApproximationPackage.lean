import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure StrongApproximationPackage where
  globalField : Type u
  placeSet : Type v
  strongApproximationTarget : Type w
  strongApproximationStatement : Prop
  strongApproximationHolds : strongApproximationStatement

structure StrongApproximationEvidence (S : StrongApproximationPackage) where
  strongApproximationHoldsClosed : S.strongApproximationHolds

def StrongApproximationClosed (S : StrongApproximationPackage) : Prop :=
  S.strongApproximationStatement

theorem strong_approximation_closed_from_evidence (S : StrongApproximationPackage)
    (E : StrongApproximationEvidence S) : StrongApproximationClosed S := by
  exact E.strongApproximationHoldsClosed

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse