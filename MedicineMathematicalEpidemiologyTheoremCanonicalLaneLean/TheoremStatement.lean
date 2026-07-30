import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean

structure EpidemiologyAdmittedObject where
  diseaseModel : Type
  population : Type
  compartment : Type
  transmissionDynamics : Prop
  inferenceSatisfied : Prop
  conclusion : transmissionDynamics ∧ inferenceSatisfied

structure EpidemiologyWitnessState where
  object : EpidemiologyAdmittedObject

def EpidemiologyWitnessClosed (O : EpidemiologyAdmittedObject) : Prop :=
  O.transmissionDynamics ∧ O.inferenceSatisfied

end MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse