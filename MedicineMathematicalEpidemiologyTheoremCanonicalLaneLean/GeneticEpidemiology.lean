import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean

structure GeneticEpidemiologyPackage where
  heritabilityEstimate : Prop
  linkageAnalysis : Prop
  associationStudy : Prop
  polygenicRiskScore : Prop
  populationStratification : Prop
  mendelianRandomization : Prop

structure GeneticEpidemiologyEvidence (G : GeneticEpidemiologyPackage) where
  heritabilityEstimateClosed : G.heritabilityEstimate
  mendelianRandomizationClosed : G.mendelianRandomization

def GeneticEpidemiologyClosed (G : GeneticEpidemiologyPackage) : Prop :=
  G.heritabilityEstimate ∧ G.mendelianRandomization

theorem genetic_epidemiology_closed_from_evidence (G : GeneticEpidemiologyPackage)
    (E : GeneticEpidemiologyEvidence G) : GeneticEpidemiologyClosed G := by
  exact And.intro E.heritabilityEstimateClosed E.mendelianRandomizationClosed

end MedicineMathematicalEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse