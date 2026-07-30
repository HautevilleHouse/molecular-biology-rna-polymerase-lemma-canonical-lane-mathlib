import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean.RnaPolymeraseCore

/-!
# Transcription Initiation Package
-/

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure TranscriptionInitiationPackage (O : RnaPolymeraseObject) where
  promoterRecognition : Prop
  closedComplexFormation : Prop
  openComplexFormation : Prop
  abortiveInitiation : Prop
  promoterEscape : Prop

structure TranscriptionInitiationEvidence (O : RnaPolymeraseObject) (P : TranscriptionInitiationPackage O) where
  promoterRecognitionClosed : P.promoterRecognition
  closedComplexFormationClosed : P.closedComplexFormation
  openComplexFormationClosed : P.openComplexFormation
  abortiveInitiationClosed : P.abortiveInitiation
  promoterEscapeClosed : P.promoterEscape

def TranscriptionInitiationClosed (O : RnaPolymeraseObject) (P : TranscriptionInitiationPackage O) : Prop :=
  P.promoterRecognition ∧ P.closedComplexFormation ∧ P.openComplexFormation ∧ P.abortiveInitiation ∧ P.promoterEscape

theorem transcription_initiation_closed_from_evidence (O : RnaPolymeraseObject) (P : TranscriptionInitiationPackage O) (E : TranscriptionInitiationEvidence O P) : TranscriptionInitiationClosed O P := by
  exact And.intro E.promoterRecognitionClosed
    (And.intro E.closedComplexFormationClosed
      (And.intro E.openComplexFormationClosed
        (And.intro E.abortiveInitiationClosed E.promoterEscapeClosed)))

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse
