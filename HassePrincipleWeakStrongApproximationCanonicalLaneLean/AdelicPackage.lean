import HautevilleHouse.HassePrincipleWeakStrongApproximationCanonicalLaneLean.HassePrincipleObjects
import HautevilleHouse.HassePrincipleWeakStrongApproximationCanonicalLaneLean.GlobalLocalPackage

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure AdelicPackage {K : NumberField} (G : GlobalLocalPackage K) where
  adeleRing : Type
  ideleGroup : Type
  classGroup : Type
  strongApproximationTheorem : Prop
  weakApproximationTheorem : Prop

structure AdelicEvidence {K : NumberField} {G : GlobalLocalPackage K}
    (A : AdelicPackage G) where
  strongApproximationHolds : A.strongApproximationTheorem
  weakApproximationHolds : A.weakApproximationTheorem

def AdelicClosed {K : NumberField} {G : GlobalLocalPackage K}
    (A : AdelicPackage G) : Prop :=
  A.strongApproximationTheorem ∧ A.weakApproximationTheorem

theorem adelic_closed_from_evidence
    {K : NumberField} {G : GlobalLocalPackage K}
    (A : AdelicPackage G) (E : AdelicEvidence A) :
    AdelicClosed A := by
  exact And.intro E.strongApproximationHolds E.weakApproximationHolds

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse
