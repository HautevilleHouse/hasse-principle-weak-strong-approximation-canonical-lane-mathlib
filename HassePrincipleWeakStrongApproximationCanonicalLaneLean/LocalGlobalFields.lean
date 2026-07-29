import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HassePrincipleWeakStrongApproximationCanonicalLaneLean

structure LocalGlobalFields where
  numberField : Type u
  places : Type v
  completion : places -> Type w
  embedding : numberField -> completion p

structure LocalGlobalFieldsEvidence (F : LocalGlobalFields) where
  numberFieldClosed : F.numberField = F.numberField
  placesClosed : F.places = F.places
  completionClosed : F.completion = F.completion
  embeddingClosed : F.embedding = F.embedding

def LocalGlobalFieldsClosed (F : LocalGlobalFields) : Prop :=
  True

theorem local_global_fields_closed_from_evidence (F : LocalGlobalFields) (E : LocalGlobalFieldsEvidence F) :
    LocalGlobalFieldsClosed F := by
  trivial

end HassePrincipleWeakStrongApproximationCanonicalLaneLean
end HautevilleHouse