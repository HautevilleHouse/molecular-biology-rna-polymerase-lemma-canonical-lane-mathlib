import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure ElongationPackage where
  rnaPolymeraseCoreEngaged : Prop
  ntpBindingOrientation : Prop
  phosphodiesterBondFormation : Prop
  translocationStep : Prop
  proofreadingMechanism : Prop

structure ElongationEvidence (E : ElongationPackage) where
  rnaPolymeraseCoreEngagedClosed : E.rnaPolymeraseCoreEngaged
  ntpBindingOrientationClosed : E.ntpBindingOrientation
  phosphodiesterBondFormationClosed : E.phosphodiesterBondFormation
  translocationStepClosed : E.translocationStep
  proofreadingMechanismClosed : E.proofreadingMechanism

def ElongationClosed (E : ElongationPackage) : Prop :=
  E.rnaPolymeraseCoreEngaged ∧ E.ntpBindingOrientation ∧
  E.phosphodiesterBondFormation ∧ E.translocationStep ∧
  E.proofreadingMechanism

theorem elongation_closed_from_evidence
    (E : ElongationPackage) (Ev : ElongationEvidence E) :
    ElongationClosed E := by
  exact And.intro Ev.rnaPolymeraseCoreEngagedClosed
    (And.intro Ev.ntpBindingOrientationClosed
      (And.intro Ev.phosphodiesterBondFormationClosed
        (And.intro Ev.translocationStepClosed Ev.proofreadingMechanismClosed)))

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse