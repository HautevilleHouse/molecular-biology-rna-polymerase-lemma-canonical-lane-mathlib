import HautevilleHouse.MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Regulation and Modification Package
-/

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure RegulationPackage where
  transcriptionFactorsBinding : Prop
  enhancerSilencerIntegration : Prop
  chromatinRemodeling : Prop
  epigeneticModulation : Prop

structure RegulationEvidence (R : RegulationPackage) where
  transcriptionFactorsBindingClosed : R.transcriptionFactorsBinding
  enhancerSilencerIntegrationClosed : R.enhancerSilencerIntegration
  chromatinRemodelingClosed : R.chromatinRemodeling
  epigeneticModulationClosed : R.epigeneticModulation

def RegulationClosed (R : RegulationPackage) : Prop :=
  R.transcriptionFactorsBinding ∧ R.enhancerSilencerIntegration ∧
  R.chromatinRemodeling ∧ R.epigeneticModulation

theorem regulation_closed_from_evidence (R : RegulationPackage) (E : RegulationEvidence R) :
    RegulationClosed R := by
  exact And.intro E.transcriptionFactorsBindingClosed
    (And.intro E.enhancerSilencerIntegrationClosed
      (And.intro E.chromatinRemodelingClosed E.epigeneticModulationClosed))

structure ModificationPackage where
  phosphorylation : Prop
  acetylation : Prop
  methylation : Prop
  ubiquitination : Prop

structure ModificationEvidence (M : ModificationPackage) where
  phosphorylationClosed : M.phosphorylation
  acetylationClosed : M.acetylation
  methylationClosed : M.methylation
  ubiquitinationClosed : M.ubiquitination

def ModificationClosed (M : ModificationPackage) : Prop :=
  M.phosphorylation ∧ M.acetylation ∧ M.methylation ∧ M.ubiquitination

theorem modification_closed_from_evidence (M : ModificationPackage) (E : ModificationEvidence M) :
    ModificationClosed M := by
  exact And.intro E.phosphorylationClosed
    (And.intro E.acetylationClosed
      (And.intro E.methylationClosed E.ubiquitinationClosed))

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse