import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure HassePrinciplePackage where
  globalField : Type u
  placeSet : Type v
  localObjects : Type w
  localObjectsAdmissible : Prop
  hassePrincipleStatement : Prop
  hassePrincipleHolds : hassePrincipleStatement

structure HassePrincipleEvidence (P : HassePrinciplePackage) where
  localObjectsAdmissibleClosed : P.localObjectsAdmissible
  hassePrincipleHoldsClosed : P.hassePrincipleHolds

def HassePrincipleClosed (P : HassePrinciplePackage) : Prop :=
  P.localObjectsAdmissible ∧ P.hassePrincipleStatement

theorem hasse_principle_closed_from_evidence (P : HassePrinciplePackage)
    (E : HassePrincipleEvidence P) : HassePrincipleClosed P := by
  exact And.intro E.localObjectsAdmissibleClosed E.hassePrincipleHoldsClosed

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse