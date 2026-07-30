import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure NeuralPopulationDynamicsPackage where
  firingRateModel : Prop
  populationCoding : Prop
  attractorDynamics : Prop
  winnerTakeAll : Prop
  decisionVariable : Prop
  evidenceAccumulation : Prop

structure NeuralPopulationDynamicsEvidence (N : NeuralPopulationDynamicsPackage) where
  firingRateModelClosed : N.firingRateModel
  populationCodingClosed : N.populationCoding
  attractorDynamicsClosed : N.attractorDynamics
  winnerTakeAllClosed : N.winnerTakeAll
  decisionVariableClosed : N.decisionVariable
  evidenceAccumulationClosed : N.evidenceAccumulation

def NeuralPopulationDynamicsClosed (N : NeuralPopulationDynamicsPackage) : Prop :=
  N.firingRateModel ∧ N.populationCoding ∧ N.attractorDynamics ∧
  N.winnerTakeAll ∧ N.decisionVariable ∧ N.evidenceAccumulation

theorem neural_population_dynamics_closed_from_evidence
    (N : NeuralPopulationDynamicsPackage)
    (E : NeuralPopulationDynamicsEvidence N) : NeuralPopulationDynamicsClosed N := by
  exact And.intro E.firingRateModelClosed
    (And.intro E.populationCodingClosed
      (And.intro E.attractorDynamicsClosed
        (And.intro E.winnerTakeAllClosed
          (And.intro E.decisionVariableClosed
            E.evidenceAccumulationClosed))))

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse