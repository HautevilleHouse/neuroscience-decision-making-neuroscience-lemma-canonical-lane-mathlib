import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure HodgkinHuxleyDynamicsPackage where
  membranePotential : ℝ → ℝ
  gatingVariables : (ℝ → ℝ) × (ℝ → ℝ) × (ℝ → ℝ)
  ionCurrents : ℝ → ℝ
  actionPotentialThreshold : Prop
  membranePotentialClosed : Prop
  gatingVariablesClosed : Prop
  ionCurrentsClosed : Prop
  actionPotentialThresholdClosed : actionPotentialThreshold

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyDynamicsPackage) where
  membranePotentialClosed : H.membranePotentialClosed
  gatingVariablesClosed : H.gatingVariablesClosed
  ionCurrentsClosed : H.ionCurrentsClosed
  actionPotentialThresholdClosed : H.actionPotentialThreshold

def HodgkinHuxleyDynamicsClosed (H : HodgkinHuxleyDynamicsPackage) : Prop :=
  H.membranePotentialClosed ∧ H.gatingVariablesClosed ∧
  H.ionCurrentsClosed ∧ H.actionPotentialThreshold

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyDynamicsPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyDynamicsClosed H := by
  exact And.intro E.membranePotentialClosed (And.intro E.gatingVariablesClosed
    (And.intro E.ionCurrentsClosed E.actionPotentialThresholdClosed))

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse
