import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure InitiationFactors where
  sigmaFactor : Prop
  promoterRecognition : Prop
  openComplexFormation : Prop
  sigmaFactorTerm : sigmaFactor := by trivial
  promoterRecognitionTerm : promoterRecognition := by trivial
  openComplexFormationTerm : openComplexFormation := by trivial

structure InitiationPackage where
  factors : InitiationFactors
  abortiveInitiation : Prop
  promoterEscape : Prop
  abortiveInitiationTerm : abortiveInitiation := by trivial
  promoterEscapeTerm : promoterEscape := by trivial

structure ElongationFactors where
  elongationComplex : Prop
  ntpBinding : Prop
  translocation : Prop
  proofreading : Prop
  elongationComplexTerm : elongationComplex := by trivial
  ntpBindingTerm : ntpBinding := by trivial
  translocationTerm : translocation := by trivial
  proofreadingTerm : proofreading := by trivial

structure InitiationElongationEvidence (I : InitiationPackage) (E : ElongationFactors) where
  abortiveInitiationClosed : I.abortiveInitiation
  promoterEscapeClosed : I.promoterEscape
  ntpBindingClosed : E.ntpBinding
  translocationClosed : E.translocation

def InitiationElongationClosed (I : InitiationPackage) (E : ElongationFactors) : Prop :=
  I.abortiveInitiation ∧ I.promoterEscape ∧ E.ntpBinding ∧ E.translocation

theorem initiation_elongation_closed_from_evidence (I : InitiationPackage) (E : ElongationFactors) (Ev : InitiationElongationEvidence I E) : InitiationElongationClosed I E := by
  exact And.intro Ev.abortiveInitiationClosed (And.intro Ev.promoterEscapeClosed (And.intro Ev.ntpBindingClosed Ev.translocationClosed))

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse