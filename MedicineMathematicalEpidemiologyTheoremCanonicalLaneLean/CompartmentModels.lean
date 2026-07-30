import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean

structure CompartmentModelPackage where
  susceptibleCompartment : Type u
  exposedCompartment : Type v
  infectedCompartment : Type w
  recoveredCompartment : Type x
  transmissionRate : Prop
  incubationPeriod : Prop
  recoveryRate : Prop
  populationConstraints : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  transmissionRateClosed : C.transmissionRate
  incubationPeriodClosed : C.incubationPeriod
  recoveryRateClosed : C.recoveryRate
  populationConstraintsClosed : C.populationConstraints

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.transmissionRate ∧ C.incubationPeriod ∧ C.recoveryRate ∧ C.populationConstraints

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C :=
  And.intro E.transmissionRateClosed
    (And.intro E.incubationPeriodClosed (And.intro E.recoveryRateClosed E.populationConstraintsClosed))

end MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse