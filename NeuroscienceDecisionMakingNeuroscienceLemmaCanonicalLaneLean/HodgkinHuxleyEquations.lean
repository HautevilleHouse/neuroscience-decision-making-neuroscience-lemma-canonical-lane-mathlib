import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  ionChannels : Type v
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakageCurrent : Prop
  gatingVariables : Prop
  equationSystem : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  sodiumCurrentClosed : H.sodiumCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  leakageCurrentClosed : H.leakageCurrent
  gatingVariablesClosed : H.gatingVariables
  equationSystemClosed : H.equationSystem

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.sodiumCurrent ∧ H.potassiumCurrent ∧ H.leakageCurrent ∧ H.gatingVariables ∧ H.equationSystem

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H :=
  And.intro E.sodiumCurrentClosed (And.intro E.potassiumCurrentClosed (And.intro E.leakageCurrentClosed (And.intro E.gatingVariablesClosed E.equationSystemClosed)))

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse