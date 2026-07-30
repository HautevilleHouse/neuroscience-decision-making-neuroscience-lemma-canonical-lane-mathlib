import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure DecisionCircuitPackage where
  evidenceAccumulation : Prop
  driftDiffusion : Prop
  decisionThreshold : Prop
  choiceCompetition : Prop
  reactionTimeDistrib : Prop

structure DecisionCircuitEvidence (D : DecisionCircuitPackage) where
  evidenceAccumulationClosed : D.evidenceAccumulation
  driftDiffusionClosed : D.driftDiffusion
  decisionThresholdClosed : D.decisionThreshold
  choiceCompetitionClosed : D.choiceCompetition
  reactionTimeDistribClosed : D.reactionTimeDistrib

def DecisionCircuitClosed (D : DecisionCircuitPackage) : Prop :=
  D.evidenceAccumulation ∧ D.driftDiffusion ∧ D.decisionThreshold ∧ D.choiceCompetition ∧ D.reactionTimeDistrib

theorem decision_circuit_closed_from_evidence (D : DecisionCircuitPackage) (E : DecisionCircuitEvidence D) :
    DecisionCircuitClosed D := by
  exact And.intro E.evidenceAccumulationClosed (And.intro E.driftDiffusionClosed (And.intro E.decisionThresholdClosed (And.intro E.choiceCompetitionClosed E.reactionTimeDistribClosed)))

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse