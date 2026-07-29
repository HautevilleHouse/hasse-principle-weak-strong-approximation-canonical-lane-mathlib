import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure HasseMinkowskiPackage where
  quadraticForm : Type u
  rationalSolutionExists : Prop
  localSolutionsExist : Prop
  hassePrincipleHolds : Prop
  
structure HasseMinkowskiEvidence (H : HasseMinkowskiPackage) where
  rationalSolutionExistsClosed : H.rationalSolutionExists
  localSolutionsExistClosed : H.localSolutionsExist
  hassePrincipleHoldsClosed : H.hassePrincipleHolds

def HasseMinkowskiClosed (H : HasseMinkowskiPackage) : Prop :=
  H.rationalSolutionExists ∧ H.localSolutionsExist ∧ H.hassePrincipleHolds

theorem hasse_minkowski_closed_from_evidence (H : HasseMinkowskiPackage) (E : HasseMinkowskiEvidence H) :
    HasseMinkowskiClosed H := by
  exact And.intro E.rationalSolutionExistsClosed
    (And.intro E.localSolutionsExistClosed E.hassePrincipleHoldsClosed)

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse