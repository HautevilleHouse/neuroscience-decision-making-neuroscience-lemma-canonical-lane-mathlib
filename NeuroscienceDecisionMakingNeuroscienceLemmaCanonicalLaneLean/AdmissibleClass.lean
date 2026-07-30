import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure NeuralAdmittedObject where
  firingRateModel : Type
  decisionRule : firingRateModel → Prop
  conclusion : Prop

def neuralAdmittedClosure (A : NeuralAdmittedObject) : Prop :=
  A.conclusion

structure AdmissibleClass where
  object : NeuralAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  neuralAdmittedClosure A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse
