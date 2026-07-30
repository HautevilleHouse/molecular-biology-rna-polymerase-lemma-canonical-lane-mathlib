import MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean.RnaPolymeraseGateLemmas

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

def ConstrainedRnaPolymeraseClosure (A : RnaPolymeraseAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rna_polymerase_endgame (A : RnaPolymeraseAdmissibleClass) :
    ConstrainedRnaPolymeraseClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse