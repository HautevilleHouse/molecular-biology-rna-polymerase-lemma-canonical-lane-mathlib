import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean.ElongationAndProofreading

/-!
# Termination and Release Package
-/

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure TerminationReleasePackage (O : RnaPolymeraseObject) (T : TranscriptionInitiationPackage O) (E : ElongationProofreadingPackage O T) where
  terminationSignalRecognition : Prop
  rnaRelease : Prop
  polymeraseRelease : Prop
  dnaReannealing : Prop

structure TerminationReleaseEvidence (O : RnaPolymeraseObject) (T : TranscriptionInitiationPackage O) (E : ElongationProofreadingPackage O T) (R : TerminationReleasePackage O T E) where
  terminationSignalRecognitionClosed : R.terminationSignalRecognition
  rnaReleaseClosed : R.rnaRelease
  polymeraseReleaseClosed : R.polymeraseRelease
  dnaReannealingClosed : R.dnaReannealing

def TerminationReleaseClosed (O : RnaPolymeraseObject) (T : TranscriptionInitiationPackage O) (E : ElongationProofreadingPackage O T) (R : TerminationReleasePackage O T E) : Prop :=
  R.terminationSignalRecognition ∧ R.rnaRelease ∧ R.polymeraseRelease ∧ R.dnaReannealing

theorem termination_release_closed_from_evidence (O : RnaPolymeraseObject) (T : TranscriptionInitiationPackage O) (E : ElongationProofreadingPackage O T) (R : TerminationReleasePackage O T E) (Ev : TerminationReleaseEvidence O T E R) : TerminationReleaseClosed O T E R := by
  exact And.intro Ev.terminationSignalRecognitionClosed
    (And.intro Ev.rnaReleaseClosed
      (And.intro Ev.polymeraseReleaseClosed Ev.dnaReannealingClosed))

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse
