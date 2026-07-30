import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RnaPolymeraseWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.proofOfEngagement

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse
