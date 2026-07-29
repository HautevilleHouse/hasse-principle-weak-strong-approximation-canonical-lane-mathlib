import canonicalLaneMathlib.AdmissibleClass
import Mathlib.NumberTheory.QuadraticForms

/-!
# Hasse Principle Package
-/

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure HassePrinciplePackage where
  quadraticForm : Type u
  localFields : List (Type v)
  isotropyAtAllPlaces : Prop
  isotropyOverGlobalField : Prop
  principleHolds : Prop

structure HassePrincipleEvidence (H : HassePrinciplePackage) where
  isotropyAtAllPlacesClosed : H.isotropyAtAllPlaces
  isotropyOverGlobalFieldClosed : H.isotropyOverGlobalField
  principleHoldsClosed : H.principleHolds

def HassePrincipleClosed (H : HassePrinciplePackage) : Prop :=
  H.isotropyAtAllPlaces ∧ H.isotropyOverGlobalField ∧ H.principleHolds

theorem hasse_principle_closed_from_evidence (H : HassePrinciplePackage) (E : HassePrincipleEvidence H) :
    HassePrincipleClosed H := by
  exact And.intro E.isotropyAtAllPlacesClosed (And.intro E.isotropyOverGlobalFieldClosed E.principleHoldsClosed)

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse
