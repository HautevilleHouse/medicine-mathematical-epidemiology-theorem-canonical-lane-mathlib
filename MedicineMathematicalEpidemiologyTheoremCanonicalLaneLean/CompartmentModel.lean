import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean

structure CompartmentModelPackage where
  compartments : List String
  transmissionRates : List (String × String × Float)
  recoveryRates : List (String × Float)
  modelEquations : Prop
  positiveInvariant : Prop
  basicReproductiveNumber : Float

structure CompartmentModelEvidence (M : CompartmentModelPackage) where
  modelEquationsClosed : M.modelEquations
  positiveInvariantClosed : M.positiveInvariant
  basicReproductiveNumberComputed : Float

structure CompartmentModelClosed (M : CompartmentModelPackage) : Prop := mk where
  modelEquationsClosed : M.modelEquations
  positiveInvariantClosed : M.positiveInvariant
  basicReproductiveNumberComputed : Float

theorem compartment_model_closed_from_evidence (M : CompartmentModelPackage) (E : CompartmentModelEvidence M) :
    CompartmentModelClosed M := by
  exact { 
    modelEquationsClosed := E.modelEquationsClosed,
    positiveInvariantClosed := E.positiveInvariantClosed,
    basicReproductiveNumberComputed := E.basicReproductiveNumberComputed
  }

end MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
