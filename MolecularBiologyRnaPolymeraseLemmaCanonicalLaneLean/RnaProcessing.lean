import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure RnaProcessingPackage where
  cappingPerformed : Prop
  splicingExecuted : Prop
  polyadenylationAdded : Prop
  exportReady : Prop

def RnaProcessingClosed (R : RnaProcessingPackage) : Prop :=
  R.cappingPerformed ∧ R.splicingExecuted ∧
  R.polyadenylationAdded ∧ R.exportReady

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse