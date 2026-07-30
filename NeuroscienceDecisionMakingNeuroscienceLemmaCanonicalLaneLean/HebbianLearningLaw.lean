import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure HebbianLearningLaw where
  preSynapticActivity : ℝ → ℝ
  postSynapticActivity : ℝ → ℝ
  weightMatrix : ℝ → ℝ
  learningRate : ℝ
  hebbianPlasticity : Prop
  weightChangeEquation : Prop
  synapticStabilization : Prop
  conclusion : synapticStabilization

def HebbianLearningWitnessClosed (h : HebbianLearningLaw) : Prop :=
  h.synapticStabilization

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse