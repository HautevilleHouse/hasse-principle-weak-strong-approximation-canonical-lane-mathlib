import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure NumberField where
  carrier : Type
  ringOfIntegers : Type
  charZero : Prop
  numberField : Prop

structure AdelicRing (K : NumberField) where
  adeleSpace : Type
  restrictedProduct : Prop
  locallyCompact : Prop

structure HassePrincipleStatement (K : NumberField) where
  quadForm : Type
  isotropicOverGlobal : Prop
  isotropicOverAllLocals : Prop
  hassePrincipleHolds : isotropicOverAllLocals → isotropicOverGlobal
  weakApproximation : Prop
  strongApproximation : Prop

structure HasseAdmittedObject where
  field : NumberField
  adeles : AdelicRing field
  statement : HassePrincipleStatement field
  conclusion : Prop

def HassePrincipleWitnessClosed (O : HasseAdmittedObject) : Prop := O.conclusion

def hasseProjection : HasseAdmittedObject → HasseAdmittedObject := id

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse
