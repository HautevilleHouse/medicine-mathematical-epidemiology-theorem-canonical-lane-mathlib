import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean

structure MedicineAdmittedObject where
  population : Type u
  diseaseModel : Type v
  intervention : Type w
  outcomeMeasure : Type x
  endpointSatisfied : Prop
  conclusion : endpointSatisfied

structure EndgameState (O : MedicineAdmittedObject) where
  object : O

def MedicineWitnessClosed (O : MedicineAdmittedObject) : Prop :=
  O.endpointSatisfied

end MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse