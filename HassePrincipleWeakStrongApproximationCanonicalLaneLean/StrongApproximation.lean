import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure StrongApproximationPackage where
  algebraicGroup : Type u
  adelicPoints : Type v
  strongApproximationProperty : Prop
  finiteSetOfPlaces : Type w
  
structure StrongApproximationEvidence (S : StrongApproximationPackage) where
  strongApproximationPropertyClosed : S.strongApproximationProperty

def StrongApproximationClosed (S : StrongApproximationPackage) : Prop :=
  S.strongApproximationProperty

theorem strong_approximation_closed_from_evidence (S : StrongApproximationPackage) (E : StrongApproximationEvidence S) :
    StrongApproximationClosed S := by
  exact E.strongApproximationPropertyClosed

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse