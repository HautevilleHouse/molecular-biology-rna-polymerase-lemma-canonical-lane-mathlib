import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure TerminationPackage where
  intrinsicTerminatorDetected : Prop
  rhoFactorRecruited : Prop
  rnaHairpinFormed : Prop
  rnaPolymeraseRelease : Prop

def TerminationClosed (T : TerminationPackage) : Prop :=
  T.intrinsicTerminatorDetected ∧ T.rhoFactorRecruited ∧
  T.rnaHairpinFormed ∧ T.rnaPolymeraseRelease

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse