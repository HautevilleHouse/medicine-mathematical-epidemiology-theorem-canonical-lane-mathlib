import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean

structure VaccinationModelPackage where
  vaccinatedCompartment : Type u
  vaccineEfficacy : Prop
  waningImmunity : Prop
  vaccinationCoverage : Prop
  vaccineEfficacyClosed : vaccineEfficacy
  waningImmunityClosed : waningImmunity
  vaccinationCoverageClosed : vaccinationCoverage

structure VaccinationModelEvidence (V : VaccinationModelPackage) where
  vaccinatedCompartmentNonempty : Nonempty V.vaccinatedCompartment
  vaccinationCoverageClosed : V.vaccinationCoverage

def VaccinationModelClosed (V : VaccinationModelPackage) : Prop :=
  (Nonempty V.vaccinatedCompartment) ∧ V.vaccinationCoverage

theorem vaccination_model_closed_from_evidence (V : VaccinationModelPackage) (E : VaccinationModelEvidence V) : VaccinationModelClosed V := by
  exact And.intro E.vaccinatedCompartmentNonempty E.vaccinationCoverageClosed

end MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse