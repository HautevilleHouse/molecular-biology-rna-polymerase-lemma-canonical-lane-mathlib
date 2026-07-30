import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure PromoterRecognitionPackage where
  promoterSequence : Type u
  sigmaFactor : Type v
  closedComplex : Prop
  openComplex : Prop
  promoterSpecificity : Prop

structure PromoterRecognitionEvidence (P : PromoterRecognitionPackage) where
  closedComplexClosed : P.closedComplex
  openComplexClosed : P.openComplex
  promoterSpecificityClosed : P.promoterSpecificity

def PromoterRecognitionClosed (P : PromoterRecognitionPackage) : Prop :=
  P.closedComplex ∧ P.openComplex ∧ P.promoterSpecificity

theorem promoter_recognition_closed_from_evidence
    (P : PromoterRecognitionPackage) (E : PromoterRecognitionEvidence P) :
    PromoterRecognitionClosed P := by
  exact And.intro E.closedComplexClosed
    (And.intro E.openComplexClosed E.promoterSpecificityClosed)

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse
