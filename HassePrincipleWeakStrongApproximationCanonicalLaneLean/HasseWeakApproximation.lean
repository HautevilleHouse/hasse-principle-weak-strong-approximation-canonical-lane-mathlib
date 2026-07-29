import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure HasseWeakApproximationPackage where
  globalField : Type u
  globalFieldHasValuations : Prop
  globalFieldIsGlobalField : Prop
  adeleRing : Type v
  adeleRingTopology : TopologicalSpace adeleRing
  diagonalEmbedding : globalField -> adeleRing
  closureOfEmbedding : Prop
  strongApproximationForFiniteSet : Set (Valuation globalField) -> Prop
  approximationType : String  -- "weak" or "strong"
  weakApproximationHolds : Prop
  strongApproximationHolds : Prop

structure HasseWeakApproximationEvidence (P : HasseWeakApproximationPackage) where
  globalFieldIsGlobalFieldClosed : P.globalFieldIsGlobalField
  weakApproximationHoldsClosed : P.weakApproximationHolds
  strongApproximationHoldsClosed : P.strongApproximationHolds
  closureOfEmbeddingClosed : P.closureOfEmbedding

def HasseWeakApproximationClosed (P : HasseWeakApproximationPackage) : Prop :=
  P.globalFieldIsGlobalField ∧ P.weakApproximationHolds ∧ P.strongApproximationHolds ∧ P.closureOfEmbedding

theorem hasse_weak_approximation_closed_from_evidence
    (P : HasseWeakApproximationPackage) (E : HasseWeakApproximationEvidence P) :
    HasseWeakApproximationClosed P := by
  exact And.intro E.globalFieldIsGlobalFieldClosed
    (And.intro E.weakApproximationHoldsClosed
      (And.intro E.strongApproximationHoldsClosed E.closureOfEmbeddingClosed))

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse
