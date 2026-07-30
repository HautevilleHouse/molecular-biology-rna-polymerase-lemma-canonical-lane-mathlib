import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure RnaPolymeraseTranscriptionPackage where
  templateStrand : Type u
  rnaTranscript : Type v
  polymeraseComplex : Type w
  initiationSite : Prop
  elongationPhase : Prop
  terminationSignal : Prop
  processivity : Prop

structure RnaPolymeraseTranscriptionEvidence (P : RnaPolymeraseTranscriptionPackage) where
  initiationSiteClosed : P.initiationSite
  elongationPhaseClosed : P.elongationPhase
  terminationSignalClosed : P.terminationSignal
  processivityClosed : P.processivity

def RnaPolymeraseTranscriptionClosed (P : RnaPolymeraseTranscriptionPackage) : Prop :=
  P.initiationSite ∧ P.elongationPhase ∧ P.terminationSignal ∧ P.processivity

theorem rna_polymerase_transcription_closed_from_evidence
    (P : RnaPolymeraseTranscriptionPackage) (E : RnaPolymeraseTranscriptionEvidence P) :
    RnaPolymeraseTranscriptionClosed P := by
  exact And.intro E.initiationSiteClosed
    (And.intro E.elongationPhaseClosed
      (And.intro E.terminationSignalClosed E.processivityClosed))

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse
