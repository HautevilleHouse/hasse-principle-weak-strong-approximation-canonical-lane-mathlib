import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure WeakApproximationPackage where
  globalField : Type u
  placeSet : Type v
  weakApproximationTarget : Type w
  weakApproximationStatement : Prop
  weakApproximationHolds : weakApproximationStatement

structure WeakApproximationEvidence (W : WeakApproximationPackage) where
  weakApproximationHoldsClosed : W.weakApproximationHolds

def WeakApproximationClosed (W : WeakApproximationPackage) : Prop :=
  W.weakApproximationStatement

theorem weak_approximation_closed_from_evidence (W : WeakApproximationPackage)
    (E : WeakApproximationEvidence W) : WeakApproximationClosed W := by
  exact E.weakApproximationHoldsClosed

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse