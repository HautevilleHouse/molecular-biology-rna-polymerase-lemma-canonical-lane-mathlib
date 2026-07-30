import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure RnaPolymeraseObject where
  dnaTemplate : Type
  promoterRegion : Prop
  transcriptionStartSite : Nat
  elongationRate : ℕ → ℕ
  terminationSignal : Prop

structure RnaPolymeraseAdmittedObject where
  polymerase : RnaPolymeraseObject
  boundToPromoter : Prop
  initiating : Prop
  elongating : Prop
  terminating : Prop
  conclusion : terminating

structure RnaPolymeraseEndgameState where
  object : RnaPolymeraseAdmittedObject

def RnaPolymeraseWitnessClosed (O : RnaPolymeraseAdmittedObject) : Prop :=
  O.terminating

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse
