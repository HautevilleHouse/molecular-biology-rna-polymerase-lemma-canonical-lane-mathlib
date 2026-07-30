import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean.RnaPolymeraseAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

def bridgeClosed (A : RnaPolymeraseAdmissibleClass) : Prop :=
  A.object.transcriptionInitiation ∧ A.object.elongationCompetence ∧ A.object.terminationSignal

theorem bridge_from_admissible_class (A : RnaPolymeraseAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse