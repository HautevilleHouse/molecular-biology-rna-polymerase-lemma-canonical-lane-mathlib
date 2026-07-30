import MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean.RnaPolymeraseBridgeLemmas

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

def gateClosed (A : RnaPolymeraseAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : RnaPolymeraseAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse