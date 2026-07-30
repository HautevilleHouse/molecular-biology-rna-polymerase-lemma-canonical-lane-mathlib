import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure ElongationDynamicsPackage where
  translocationStep : Type u
  nucleotideAddition : Type v
  proofreadingMechanism : Prop
  pauseSites : Prop
  backtrackingResolution : Prop

structure ElongationDynamicsEvidence (E : ElongationDynamicsPackage) where
  translocationStepClosed : E.translocationStep
  nucleotideAdditionClosed : E.nucleotideAddition
  proofreadingMechanismClosed : E.proofreadingMechanism
  pauseSitesClosed : E.pauseSites
  backtrackingResolutionClosed : E.backtrackingResolution

def ElongationDynamicsClosed (E : ElongationDynamicsPackage) : Prop :=
  E.translocationStep ∧ E.nucleotideAddition ∧
  E.proofreadingMechanism ∧ E.pauseSites ∧ E.backtrackingResolution

theorem elongation_dynamics_closed_from_evidence
    (E : ElongationDynamicsPackage) (Ev : ElongationDynamicsEvidence E) :
    ElongationDynamicsClosed E := by
  exact And.intro Ev.translocationStepClosed
    (And.intro Ev.nucleotideAdditionClosed
      (And.intro Ev.proofreadingMechanismClosed
        (And.intro Ev.pauseSitesClosed Ev.backtrackingResolutionClosed)))

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse
