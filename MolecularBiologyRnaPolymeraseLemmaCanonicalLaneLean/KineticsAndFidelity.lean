import HautevilleHouse.MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Kinetics and Fidelity Package
-/

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure ElongationKineticsPackage where
  polymerizationRate : Prop
  pausingRecovery : Prop
  backtrackingReactivation : Prop
  nucleosomeBarrierCrossing : Prop

structure ElongationKineticsEvidence (K : ElongationKineticsPackage) where
  polymerizationRateClosed : K.polymerizationRate
  pausingRecoveryClosed : K.pausingRecovery
  backtrackingReactivationClosed : K.backtrackingReactivation
  nucleosomeBarrierCrossingClosed : K.nucleosomeBarrierCrossing

def ElongationKineticsClosed (K : ElongationKineticsPackage) : Prop :=
  K.polymerizationRate ∧ K.pausingRecovery ∧ K.backtrackingReactivation ∧ K.nucleosomeBarrierCrossing

theorem elongation_kinetics_closed_from_evidence (K : ElongationKineticsPackage)
    (E : ElongationKineticsEvidence K) : ElongationKineticsClosed K := by
  exact And.intro E.polymerizationRateClosed
    (And.intro E.pausingRecoveryClosed
      (And.intro E.backtrackingReactivationClosed E.nucleosomeBarrierCrossingClosed))

structure FidelityPackage where
  errorRate : Prop
  proofreadingMechanism : Prop
  mismatchRepairCoupling : Prop
  lesionBypass : Prop

structure FidelityEvidence (F : FidelityPackage) where
  errorRateClosed : F.errorRate
  proofreadingMechanismClosed : F.proofreadingMechanism
  mismatchRepairCouplingClosed : F.mismatchRepairCoupling
  lesionBypassClosed : F.lesionBypass

def FidelityClosed (F : FidelityPackage) : Prop :=
  F.errorRate ∧ F.proofreadingMechanism ∧ F.mismatchRepairCoupling ∧ F.lesionBypass

theorem fidelity_closed_from_evidence (F : FidelityPackage) (E : FidelityEvidence F) :
    FidelityClosed F := by
  exact And.intro E.errorRateClosed
    (And.intro E.proofreadingMechanismClosed
      (And.intro E.mismatchRepairCouplingClosed E.lesionBypassClosed))

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse