import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

def ConstrainedNeuroscienceDecisionMakingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neuroscience_decision_making_endgame (A : AdmissibleClass) :
    ConstrainedNeuroscienceDecisionMakingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse
