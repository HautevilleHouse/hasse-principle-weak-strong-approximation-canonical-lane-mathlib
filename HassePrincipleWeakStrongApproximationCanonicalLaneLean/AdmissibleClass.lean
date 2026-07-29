import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WeakApproximationClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse