import HautevilleHouse.HassePrincipleWeakStrongApproximationCanonicalLaneLean.HassePrincipleObjects

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure QuadraticFormOverLocalField (K : NumberField) where
  localField : Type
  residueField : Type
  hilbertSymbol : Type
  isotropyCriterion : Prop
  hasseInvariant : Prop

structure QuadraticFormsPackage {K : NumberField} (L : QuadraticFormOverLocalField K) where
  globalForm : Type
  localForms : K → Type
  hasseMinkowskiTheorem : Prop
  strongApproximationForQuadraticForms : Prop

structure QuadraticFormsEvidence {K : NumberField} {L : QuadraticFormOverLocalField K}
    (Q : QuadraticFormsPackage L) where
  hasseMinkowskiHolds : Q.hasseMinkowskiTheorem
  strongApproximationHolds : Q.strongApproximationForQuadraticForms

def QuadraticFormsClosed {K : NumberField} {L : QuadraticFormOverLocalField K}
    (Q : QuadraticFormsPackage L) : Prop :=
  Q.hasseMinkowskiTheorem ∧ Q.strongApproximationForQuadraticForms

theorem quadratic_forms_closed_from_evidence
    {K : NumberField} {L : QuadraticFormOverLocalField K}
    (Q : QuadraticFormsPackage L) (E : QuadraticFormsEvidence Q) :
    QuadraticFormsClosed Q := by
  exact And.intro E.hasseMinkowskiHolds E.strongApproximationHolds

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse
