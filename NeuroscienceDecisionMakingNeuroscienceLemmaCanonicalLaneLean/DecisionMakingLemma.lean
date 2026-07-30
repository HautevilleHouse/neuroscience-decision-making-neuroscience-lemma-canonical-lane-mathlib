import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure DecisionMakingLemmaPackage where
  sensoryInput : ℝ → ℝ
  accumulator : ℝ → ℝ
  decisionThreshold : ℝ
  decisionTime : ℝ
  decisionReached : Prop
  sensoryInputClosed : Prop
  accumulatorClosed : Prop
  decisionReachedClosed : decisionReached

structure DecisionMakingLemmaEvidence (D : DecisionMakingLemmaPackage) where
  sensoryInputClosed : D.sensoryInputClosed
  accumulatorClosed : D.accumulatorClosed
  decisionReachedClosed : D.decisionReached

def DecisionMakingLemmaClosed (D : DecisionMakingLemmaPackage) : Prop :=
  D.sensoryInputClosed ∧ D.accumulatorClosed ∧ D.decisionReached

theorem decision_making_lemma_closed_from_evidence (D : DecisionMakingLemmaPackage)
    (E : DecisionMakingLemmaEvidence D) : DecisionMakingLemmaClosed D := by
  exact And.intro E.sensoryInputClosed (And.intro E.accumulatorClosed E.decisionReachedClosed)

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse
