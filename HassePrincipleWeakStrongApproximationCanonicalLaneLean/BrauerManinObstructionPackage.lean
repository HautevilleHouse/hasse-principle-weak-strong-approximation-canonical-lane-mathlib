import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure BrauerManinObstructionPackage where
  globalField : Type u
  variety : Type v
  brauerSet : Type w
  obstructionComputed : Prop
  obstructionTrivialImpliesPrinciple : Prop
  obstructionTrivialityCondition : obstructionTrivialImpliesPrinciple

structure BrauerManinObstructionEvidence (B : BrauerManinObstructionPackage) where
  obstructionComputedClosed : B.obstructionComputed
  obstructionTrivialityConditionClosed : B.obstructionTrivialImpliesPrinciple

def BrauerManinObstructionClosed (B : BrauerManinObstructionPackage) : Prop :=
  B.obstructionComputed ∧ B.obstructionTrivialImpliesPrinciple

theorem brauer_manin_obstruction_closed_from_evidence
    (B : BrauerManinObstructionPackage)
    (E : BrauerManinObstructionEvidence B) : BrauerManinObstructionClosed B := by
  exact And.intro E.obstructionComputedClosed E.obstructionTrivialityConditionClosed

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse