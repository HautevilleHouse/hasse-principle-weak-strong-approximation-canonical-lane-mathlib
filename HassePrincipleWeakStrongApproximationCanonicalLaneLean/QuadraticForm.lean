import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HassePrincipleWeakStrongApproximationCanonicalLaneLean.GlobalField

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure QuadraticForm (F : HasseField) where
  dimension : Nat
  coefficients : Type
  discriminant : Prop
  hasseInvariant : Prop
  discriminantTerm : discriminant
  hasseInvariantTerm : hasseInvariant

def QuadraticFormClosed {F : HasseField} (Q : QuadraticForm F) : Prop :=
  Q.discriminant ∧ Q.hasseInvariant

theorem quadratic_form_closed_from_evidence {F : HasseField} (Q : QuadraticForm F)
    (E : Q.discriminant ∧ Q.hasseInvariant) : QuadraticFormClosed Q := E

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse