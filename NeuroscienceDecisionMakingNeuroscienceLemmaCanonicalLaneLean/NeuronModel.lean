import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure NeuronModelPackage where
  membranePotential : Type u
  ionConductances : Type v
  hodgkinHuxleyEqns : Prop
  actionPotentialThreshold : Prop
  refractoryPeriod : Prop

structure NeuronModelEvidence (N : NeuronModelPackage) where
  hodgkinHuxleyEqnsClosed : N.hodgkinHuxleyEqns
  actionPotentialThresholdClosed : N.actionPotentialThreshold
  refractoryPeriodClosed : N.refractoryPeriod

def NeuronModelClosed (N : NeuronModelPackage) : Prop :=
  N.hodgkinHuxleyEqns ∧ N.actionPotentialThreshold ∧ N.refractoryPeriod

theorem neuron_model_closed_from_evidence (N : NeuronModelPackage) (E : NeuronModelEvidence N) :
    NeuronModelClosed N := by
  exact And.intro E.hodgkinHuxleyEqnsClosed (And.intro E.actionPotentialThresholdClosed E.refractoryPeriodClosed)

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse