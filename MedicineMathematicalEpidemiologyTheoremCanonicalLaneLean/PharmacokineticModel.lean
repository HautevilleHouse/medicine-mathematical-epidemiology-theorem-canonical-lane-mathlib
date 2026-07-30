import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean

structure PharmacokineticModelPackage where
  drugConcentration : Type u
  absorptionRate : Prop
  eliminationRate : Prop
  volumeDistribution : Prop
  steadyStateConcentration : Prop
  therapeuticWindow : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModelPackage) where
  steadyStateConcentrationClosed : P.steadyStateConcentration
  therapeuticWindowClosed : P.therapeuticWindow

def PharmacokineticModelClosed (P : PharmacokineticModelPackage) : Prop :=
  P.steadyStateConcentration ∧ P.therapeuticWindow

theorem pharmacokinetic_model_closed_from_evidence (P : PharmacokineticModelPackage)
    (E : PharmacokineticModelEvidence P) : PharmacokineticModelClosed P := by
  exact And.intro E.steadyStateConcentrationClosed E.therapeuticWindowClosed

end MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse