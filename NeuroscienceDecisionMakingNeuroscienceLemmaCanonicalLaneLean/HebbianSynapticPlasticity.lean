import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure HebbianSynapticPlasticityPackage where
  preSynapticActivity : ℝ → ℝ
  postSynapticActivity : ℝ → ℝ
  synapticWeight : ℝ → ℝ
  hebbianRule : Prop
  weightDynamicsClosed : Prop
  hebbianRuleClosed : hebbianRule

structure HebbianSynapticPlasticityEvidence (H : HebbianSynapticPlasticityPackage) where
  weightDynamicsClosed : H.weightDynamicsClosed
  hebbianRuleClosed : H.hebbianRule

def HebbianSynapticPlasticityClosed (H : HebbianSynapticPlasticityPackage) : Prop :=
  H.weightDynamicsClosed ∧ H.hebbianRule

theorem hebbian_closed_from_evidence (H : HebbianSynapticPlasticityPackage)
    (E : HebbianSynapticPlasticityEvidence H) : HebbianSynapticPlasticityClosed H := by
  exact And.intro E.weightDynamicsClosed E.hebbianRuleClosed

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse
