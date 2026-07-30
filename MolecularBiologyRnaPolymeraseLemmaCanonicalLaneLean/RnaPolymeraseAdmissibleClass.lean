import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure RnaPolymeraseAdmissibleObject where
  geneSequence : String
  transcriptionInitiation : Prop
  elongationCompetence : Prop
  terminationSignal : Prop
  conclusion : transcriptionInitiation ∧ elongationCompetence ∧ terminationSignal

structure RnaPolymeraseAdmissibleClass where
  object : RnaPolymeraseAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def rnaPolymeraseAdmittedClosure (A : RnaPolymeraseAdmissibleClass) : Prop :=
  (A.object.transcriptionInitiation ∧ A.object.elongationCompetence ∧ A.object.terminationSignal) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse