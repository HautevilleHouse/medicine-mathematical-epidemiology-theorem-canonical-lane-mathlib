import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean

structure DiagnosticTestPerformance where
  sensitivity : Float
  specificity : Float
  positivePredictiveValue : Float
  negativePredictiveValue : Float

structure DiagnosticInferencePackage where
  testPerformance : DiagnosticTestPerformance
  prevalence : Float
  bayesianUpdate : Prop
  decisionThreshold : Float
  optimalTestStrategy : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  bayesianUpdateClosed : D.bayesianUpdate
  optimalTestStrategyClosed : D.optimalTestStrategy

structure DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop := mk where
  bayesianUpdateClosed : D.bayesianUpdate
  optimalTestStrategyClosed : D.optimalTestStrategy

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInferencePackage) (E : DiagnosticInferenceEvidence D) :
    DiagnosticInferenceClosed D := by
  exact { 
    bayesianUpdateClosed := E.bayesianUpdateClosed,
    optimalTestStrategyClosed := E.optimalTestStrategyClosed
  }

end MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
