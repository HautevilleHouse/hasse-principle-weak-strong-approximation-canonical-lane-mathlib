import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure AdelicInterpretationPackage where
  adeleRing : Type u
  ideleGroup : Type v
  classGroup : Type w
  approximationProperty : Prop

structure AdelicInterpretationEvidence (A : AdelicInterpretationPackage) where
  approximationPropertyClosed : A.approximationProperty

def AdelicInterpretationClosed (A : AdelicInterpretationPackage) : Prop :=
  A.approximationProperty

theorem adelic_interpretation_closed_from_evidence (A : AdelicInterpretationPackage) (E : AdelicInterpretationEvidence A) :
    AdelicInterpretationClosed A := by
  exact E.approximationPropertyClosed

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse