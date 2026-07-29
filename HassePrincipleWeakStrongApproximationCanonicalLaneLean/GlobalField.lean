import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure HasseField where
  carrier : Type
  completionFamily : Type
  globalToLocal : Prop
  productFormula : Prop
  classNumberOne : Prop
  completionFamilyDefined : completionFamily
  globalToLocalTerm : globalToLocal
  productFormulaTerm : productFormula
  classNumberOneTerm : classNumberOne

def HasseFieldClosed (F : HasseField) : Prop :=
  F.globalToLocal ∧ F.productFormula ∧ F.classNumberOne

theorem hasse_field_closed_from_evidence (F : HasseField) (E : F.globalToLocal ∧ F.productFormula ∧ F.classNumberOne) :
    HasseFieldClosed F := E

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse