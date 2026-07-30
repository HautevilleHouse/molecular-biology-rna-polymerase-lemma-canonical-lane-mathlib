import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean

structure PrimitiveDNATemplate where
  baseSequence : Type
  length : Nat
  lengthTerm : length = 0 := by rfl

structure PrimitiveNucleotidePool where
  ATP : Nat
  CTP : Nat
  GTP : Nat
  UTP : Nat
  sufficientPool : Prop
  sufficientPoolTerm : sufficientPool := by trivial

structure PrimitiveRNAPolymerase where
  subunits : Nat
  activeSite : Prop
  processivity : Prop
  subunitTerm : subunits = 5 := by rfl

structure PrimitiveTranscriptionBubble where
  template : PrimitiveDNATemplate
  polymerase : PrimitiveRNAPolymerase
  position : Nat
  openComplex : Prop
  bubbleSize : Prop
  openComplexTerm : openComplex := by trivial
  bubbleSizeTerm : bubbleSize := by trivial

structure PrimitiveElongationRate where
  rate : Nat
  errorRate : Nat
  rateTerm : rate = 40 := by rfl
  errorRateTerm : errorRate = 1 := by rfl

structure PrimitiveTerminationSignal where
  sequence : Type
  rhoFactor : Prop
  intrinsicTermination : Prop
  sequenceLength : Nat
  sequenceLengthTerm : sequenceLength = 6 := by rfl

end MolecularBiologyRnaPolymeraseLemmaCanonicalLaneLean
end HautevilleHouse