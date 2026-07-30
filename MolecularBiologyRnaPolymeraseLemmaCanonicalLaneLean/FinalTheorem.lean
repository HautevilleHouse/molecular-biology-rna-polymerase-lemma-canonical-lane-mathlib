import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

def ConstrainedRnaPolymeraseClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rna_polymerase_endgame (A : AdmissibleClass) :
    ConstrainedRnaPolymeraseClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse
