import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure TranscriptProcessingPackage where
  capping : Prop
  splicing : Prop
  polyadenylation : Prop
  exportCompetence : Prop

structure TranscriptProcessingEvidence (T : TranscriptProcessingPackage) where
  cappingClosed : T.capping
  splicingClosed : T.splicing
  polyadenylationClosed : T.polyadenylation
  exportCompetenceClosed : T.exportCompetence

def TranscriptProcessingClosed (T : TranscriptProcessingPackage) : Prop :=
  T.capping ∧ T.splicing ∧ T.polyadenylation ∧ T.exportCompetence

theorem transcript_processing_closed_from_evidence
    (T : TranscriptProcessingPackage) (E : TranscriptProcessingEvidence T) :
    TranscriptProcessingClosed T := by
  exact And.intro E.cappingClosed
    (And.intro E.splicingClosed
      (And.intro E.polyadenylationClosed E.exportCompetenceClosed))

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse
