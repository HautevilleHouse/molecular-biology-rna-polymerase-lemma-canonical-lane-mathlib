import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure RegulationPackage where
  transcriptionFactorBinding : Prop
  enhancerSilencerEffect : Prop
  chromatinRemodeling : Prop
  polymerasePausingRegulated : Prop
  elongationRateControlled : Prop

def RegulationClosed (R : RegulationPackage) : Prop :=
  R.transcriptionFactorBinding ∧ R.enhancerSilencerEffect ∧
  R.chromatinRemodeling ∧ R.polymerasePausingRegulated ∧
  R.elongationRateControlled

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse