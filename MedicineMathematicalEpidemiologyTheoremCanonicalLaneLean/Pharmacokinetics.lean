import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean

structure PharmacokineticsPackage where
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  concentrationTimeCurve : Prop
  doseResponseRelationship : Prop

structure PharmacokineticsEvidence (P : PharmacokineticsPackage) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  concentrationTimeCurveClosed : P.concentrationTimeCurve
  doseResponseRelationshipClosed : P.doseResponseRelationship

def PharmacokineticsClosed (P : PharmacokineticsPackage) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.eliminationRate ∧
  P.concentrationTimeCurve ∧ P.doseResponseRelationship

theorem pharmacokinetics_closed_from_evidence (P : PharmacokineticsPackage)
    (E : PharmacokineticsEvidence P) : PharmacokineticsClosed P := by
  exact And.intro E.absorptionRateClosed (And.intro E.distributionVolumeClosed
    (And.intro E.eliminationRateClosed (And.intro E.concentrationTimeCurveClosed
      E.doseResponseRelationshipClosed)))

end MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse