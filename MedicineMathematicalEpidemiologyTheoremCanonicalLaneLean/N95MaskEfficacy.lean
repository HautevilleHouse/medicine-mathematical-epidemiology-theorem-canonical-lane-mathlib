import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean

structure N95MaskEfficacyModel where
  aerosolSizeDistribution : Type
  filtrationEfficiency : Type
  fitFactor : Type
  exposureTime : Type
  cumulativeDose : Type
  poissonProcess : Prop
  doseResponse : Prop
  reproductionNumber : Prop

structure N95MaskEfficacyEvidence (N : N95MaskEfficacyModel) where
  poissonProcessClosed : N.poissonProcess
  doseResponseClosed : N.doseResponse
  reproductionNumberClosed : N.reproductionNumber

def N95MaskEfficacyClosure (N : N95MaskEfficacyModel) : Prop :=
  N.poissonProcess ∧ N.doseResponse ∧ N.reproductionNumber

theorem n95_mask_efficacy_closed_from_evidence (N : N95MaskEfficacyModel) (E : N95MaskEfficacyEvidence N) : N95MaskEfficacyClosure N := by
  exact And.intro E.poissonProcessClosed (And.intro E.doseResponseClosed E.reproductionNumberClosed)

end MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse