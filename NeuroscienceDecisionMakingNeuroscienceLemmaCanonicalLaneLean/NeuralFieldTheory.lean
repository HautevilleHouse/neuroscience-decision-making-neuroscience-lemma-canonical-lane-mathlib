import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure NeuralFieldTheory where
  neuralField : ℝ → ℝ → ℝ
  connectivityKernel : ℝ → ℝ → ℝ
  firingRateFunction : ℝ → ℝ
  externalStimulus : ℝ → ℝ
  integroDifferentialEquation : Prop
  stationarySolutions : Prop
  bifurcationStructure : Prop
  conclusion : bifurcationStructure

def NeuralFieldWitnessClosed (n : NeuralFieldTheory) : Prop :=
  n.bifurcationStructure

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse