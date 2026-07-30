import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure MisincorporationEvent where
  position : Nat
  incorrectNucleotide : String
  misincorporationRate : Nat
  misincorporationRateTerm : misincorporationRate = 1 := by rfl

structure ProofreadMechanism where
  exonucleaseActivity : Prop
  backtracking : Prop
  excisionCleavage : Prop
  exonucleaseActivityTerm : exonucleaseActivity := by trivial
  backtrackingTerm : backtracking := by trivial
  excisionCleavageTerm : excisionCleavage := by trivial

structure CorrectionPackage (M : MisincorporationEvent) where
  errorDetected : Prop
  proofreadMechanism : ProofreadMechanism
  correctionCompleted : Prop
  errorDetectedTerm : errorDetected := by trivial
  correctionCompletedTerm : correctionCompleted := by trivial

structure CorrectionEvidence (M : MisincorporationEvent) (C : CorrectionPackage M) where
  errorDetectedClosed : C.errorDetected
  exonucleaseActivityClosed : C.proofreadMechanism.exonucleaseActivity
  correctionCompletedClosed : C.correctionCompleted

def CorrectionClosed (M : MisincorporationEvent) (C : CorrectionPackage M) : Prop :=
  C.errorDetected ∧ C.proofreadMechanism.exonucleaseActivity ∧ C.correctionCompleted

theorem correction_closed_from_evidence (M : MisincorporationEvent) (C : CorrectionPackage M) (E : CorrectionEvidence M C) : CorrectionClosed M C := by
  exact And.intro E.errorDetectedClosed (And.intro E.exonucleaseActivityClosed E.correctionCompletedClosed)

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse