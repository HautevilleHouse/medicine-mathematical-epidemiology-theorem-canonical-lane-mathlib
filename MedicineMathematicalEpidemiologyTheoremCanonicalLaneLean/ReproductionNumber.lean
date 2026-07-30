import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean

structure ReproductionNumberPackage where
  basicReproNumber : Prop
  effectiveReproNumber : Prop
  epidemicThreshold : Prop
  herdImmunityThreshold : Prop
  basicReproNumberClosed : basicReproNumber
  effectiveReproNumberClosed : effectiveReproNumber
  epidemicThresholdClosed : epidemicThreshold
  herdImmunityThresholdClosed : herdImmunityThreshold

structure ReproductionNumberEvidence (R : ReproductionNumberPackage) where
  r0Calculated : R.basicReproNumber
  thresholdReached : R.epidemicThreshold

def ReproductionNumberClosed (R : ReproductionNumberPackage) : Prop :=
  R.basicReproNumber ∧ R.epidemicThreshold

theorem reproduction_number_closed_from_evidence (R : ReproductionNumberPackage) (E : ReproductionNumberEvidence R) : ReproductionNumberClosed R := by
  exact And.intro E.r0Calculated E.thresholdReached

end MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse