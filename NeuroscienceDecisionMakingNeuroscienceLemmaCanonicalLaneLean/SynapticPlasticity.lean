import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure SynapticPlasticityPackage where
  hebbianMechanism : Prop
  stdpMechanism : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  calciumDynamics : Prop
  receptorTrafficking : Prop
  structuralPlasticity : Prop

structure SynapticPlasticityEvidence (S : SynapticPlasticityPackage) where
  hebbianMechanismClosed : S.hebbianMechanism
  stdpMechanismClosed : S.stdpMechanism
  longTermPotentiationClosed : S.longTermPotentiation
  longTermDepressionClosed : S.longTermDepression
  calciumDynamicsClosed : S.calciumDynamics
  receptorTraffickingClosed : S.receptorTrafficking
  structuralPlasticityClosed : S.structuralPlasticity

def SynapticPlasticityClosed (S : SynapticPlasticityPackage) : Prop :=
  S.hebbianMechanism ∧ S.stdpMechanism ∧ S.longTermPotentiation ∧
  S.longTermDepression ∧ S.calciumDynamics ∧ S.receptorTrafficking ∧
  S.structuralPlasticity

theorem synaptic_plasticity_closed_from_evidence (S : SynapticPlasticityPackage)
    (E : SynapticPlasticityEvidence S) : SynapticPlasticityClosed S := by
  exact And.intro E.hebbianMechanismClosed
    (And.intro E.stdpMechanismClosed
      (And.intro E.longTermPotentiationClosed
        (And.intro E.longTermDepressionClosed
          (And.intro E.calciumDynamicsClosed
            (And.intro E.receptorTraffickingClosed
              E.structuralPlasticityClosed)))))

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse