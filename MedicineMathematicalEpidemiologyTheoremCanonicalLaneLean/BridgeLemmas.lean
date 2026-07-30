import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MedicineWitnessClosed (A.object : MedicineAdmittedObject)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact (A.object : MedicineAdmittedObject).endpointSatisfied

end MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse