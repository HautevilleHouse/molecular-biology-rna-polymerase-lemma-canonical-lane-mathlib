import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean.TranscriptionInitiation

/-!
# Elongation and Proofreading Package
-/

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure ElongationProofreadingPackage (O : RnaPolymeraseObject) (T : TranscriptionInitiationPackage O) where
  elongationRateStable : Prop
  nucleotideAddition : Prop
  proofreading : Prop
  backtracking : Prop
  misincorporationCorrection : Prop

structure ElongationProofreadingEvidence (O : RnaPolymeraseObject) (T : TranscriptionInitiationPackage O) (E : ElongationProofreadingPackage O T) where
  elongationRateStableClosed : E.elongationRateStable
  nucleotideAdditionClosed : E.nucleotideAddition
  proofreadingClosed : E.proofreading
  backtrackingClosed : E.backtracking
  misincorporationCorrectionClosed : E.misincorporationCorrection

def ElongationProofreadingClosed (O : RnaPolymeraseObject) (T : TranscriptionInitiationPackage O) (E : ElongationProofreadingPackage O T) : Prop :=
  E.elongationRateStable ∧ E.nucleotideAddition ∧ E.proofreading ∧ E.backtracking ∧ E.misincorporationCorrection

theorem elongation_proofreading_closed_from_evidence (O : RnaPolymeraseObject) (T : TranscriptionInitiationPackage O) (E : ElongationProofreadingPackage O T) (Ev : ElongationProofreadingEvidence O T E) : ElongationProofreadingClosed O T E := by
  exact And.intro Ev.elongationRateStableClosed
    (And.intro Ev.nucleotideAdditionClosed
      (And.intro Ev.proofreadingClosed
        (And.intro Ev.backtrackingClosed Ev.misincorporationCorrectionClosed)))

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse
