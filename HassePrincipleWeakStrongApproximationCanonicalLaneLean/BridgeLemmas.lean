import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WeakApproximationClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse