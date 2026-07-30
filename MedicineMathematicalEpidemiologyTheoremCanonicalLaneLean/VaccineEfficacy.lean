import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean

structure VaccineEfficacyPackage where
  vaccineGroup : Type u
  controlGroup : Type v
  incidenceRateVaccinated : Prop
  incidenceRateControl : Prop
  vaccineEfficacyMeasure : Prop
  confidenceInterval : Prop
  numberNeededToVaccinate : Prop

structure VaccineEfficacyEvidence (V : VaccineEfficacyPackage) where
  vaccineEfficacyMeasureClosed : V.vaccineEfficacyMeasure
  confidenceIntervalClosed : V.confidenceInterval

def VaccineEfficacyClosed (V : VaccineEfficacyPackage) : Prop :=
  V.vaccineEfficacyMeasure ∧ V.confidenceInterval

theorem vaccine_efficacy_closed_from_evidence (V : VaccineEfficacyPackage)
    (E : VaccineEfficacyEvidence V) : VaccineEfficacyClosed V := by
  exact And.intro E.vaccineEfficacyMeasureClosed E.confidenceIntervalClosed

end MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse