import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure WeakApproximationPackage where
  variety : Type u
  rationalPointsDense : Prop
  localGlobalPrincipleHolds : Prop

structure WeakApproximationEvidence (W : WeakApproximationPackage) where
  rationalPointsDenseClosed : W.rationalPointsDense
  localGlobalPrincipleHoldsClosed : W.localGlobalPrincipleHolds

def WeakApproximationClosed (W : WeakApproximationPackage) : Prop :=
  W.rationalPointsDense ∧ W.localGlobalPrincipleHolds

theorem weak_approximation_closed_from_evidence (W : WeakApproximationPackage) (E : WeakApproximationEvidence W) :
    WeakApproximationClosed W := by
  exact And.intro E.rationalPointsDenseClosed E.localGlobalPrincipleHoldsClosed

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse