import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure HebbianLearningPackage where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  synapticWeight : Type u
  weightUpdateRule : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

structure HebbianLearningEvidence (H : HebbianLearningPackage) where
  presynapticActivityClosed : H.presynapticActivity
  postsynapticActivityClosed : H.postsynapticActivity
  weightUpdateRuleClosed : H.weightUpdateRule
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression

def HebbianLearningClosed (H : HebbianLearningPackage) : Prop :=
  H.presynapticActivity ∧ H.postsynapticActivity ∧ H.weightUpdateRule ∧
  H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningPackage)
    (E : HebbianLearningEvidence H) : HebbianLearningClosed H := by
  exact And.intro E.presynapticActivityClosed (And.intro E.postsynapticActivityClosed
    (And.intro E.weightUpdateRuleClosed (And.intro E.longTermPotentiationClosed
      E.longTermDepressionClosed)))

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse