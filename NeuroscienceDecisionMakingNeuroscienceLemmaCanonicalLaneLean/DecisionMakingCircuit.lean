import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean.SynapticPlasticity
import HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean.NeuralPopulationDynamics
import HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean.NeuromodulatoryInfluences

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure DecisionMakingCircuitPackage
    (S : SynapticPlasticityPackage) (N : NeuralPopulationDynamicsPackage)
    (M : NeuromodulatoryInfluencesPackage) where
  corticalStriatalLoop : Prop
  prefrontalControl : Prop
  basalGangliaGate : Prop
  thalamocorticalRelay : Prop
  actionSelection : Prop
  valueComparison : Prop

structure DecisionMakingCircuitEvidence
    (S : SynapticPlasticityPackage) (N : NeuralPopulationDynamicsPackage)
    (M : NeuromodulatoryInfluencesPackage)
    (C : DecisionMakingCircuitPackage S N M) where
  corticalStriatalLoopClosed : C.corticalStriatalLoop
  prefrontalControlClosed : C.prefrontalControl
  basalGangliaGateClosed : C.basalGangliaGate
  thalamocorticalRelayClosed : C.thalamocorticalRelay
  actionSelectionClosed : C.actionSelection
  valueComparisonClosed : C.valueComparison

def DecisionMakingCircuitClosed
    (S : SynapticPlasticityPackage) (N : NeuralPopulationDynamicsPackage)
    (M : NeuromodulatoryInfluencesPackage)
    (C : DecisionMakingCircuitPackage S N M) : Prop :=
  C.corticalStriatalLoop ∧ C.prefrontalControl ∧ C.basalGangliaGate ∧
  C.thalamocorticalRelay ∧ C.actionSelection ∧ C.valueComparison

theorem decision_making_circuit_closed_from_evidence
    (S : SynapticPlasticityPackage) (N : NeuralPopulationDynamicsPackage)
    (M : NeuromodulatoryInfluencesPackage)
    (C : DecisionMakingCircuitPackage S N M)
    (E : DecisionMakingCircuitEvidence S N M C) :
    DecisionMakingCircuitClosed S N M C := by
  exact And.intro E.corticalStriatalLoopClosed
    (And.intro E.prefrontalControlClosed
      (And.intro E.basalGangliaGateClosed
        (And.intro E.thalamocorticalRelayClosed
          (And.intro E.actionSelectionClosed
            E.valueComparisonClosed))))

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse