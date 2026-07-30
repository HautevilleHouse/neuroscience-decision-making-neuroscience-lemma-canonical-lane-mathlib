import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure HodgkinHuxleyModel where
  membranePotential : ℝ → ℝ
  gatingVariables : ℝ → ℝ × ℝ × ℝ
  ionCurrents : ℝ → ℝ
  externalInput : ℝ
  differentialEquation : Prop
  parametersFixed : Prop
  actionPotentialGenerated : Prop
  conclusion : actionPotentialGenerated

def HodgkinHuxleyWitnessClosed (m : HodgkinHuxleyModel) : Prop :=
  m.actionPotentialGenerated

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse