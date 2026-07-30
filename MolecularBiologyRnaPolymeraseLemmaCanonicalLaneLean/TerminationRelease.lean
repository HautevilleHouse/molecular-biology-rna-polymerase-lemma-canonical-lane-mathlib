import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure TerminationReleasePackage where
  intrinsicTerminator : Prop
  rhoDependentTermination : Prop
  rnaRelease : Prop
  polymeraseDissociation : Prop

structure TerminationReleaseEvidence (T : TerminationReleasePackage) where
  intrinsicTerminatorClosed : T.intrinsicTerminator
  rhoDependentTerminationClosed : T.rhoDependentTermination
  rnaReleaseClosed : T.rnaRelease
  polymeraseDissociationClosed : T.polymeraseDissociation

def TerminationReleaseClosed (T : TerminationReleasePackage) : Prop :=
  T.intrinsicTerminator ∧ T.rhoDependentTermination ∧
  T.rnaRelease ∧ T.polymeraseDissociation

theorem termination_release_closed_from_evidence
    (T : TerminationReleasePackage) (E : TerminationReleaseEvidence T) :
    TerminationReleaseClosed T := by
  exact And.intro E.intrinsicTerminatorClosed
    (And.intro E.rhoDependentTerminationClosed
      (And.intro E.rnaReleaseClosed E.polymeraseDissociationClosed))

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse
