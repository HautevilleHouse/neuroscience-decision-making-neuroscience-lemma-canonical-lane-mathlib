import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure NeuromodulatoryInfluencesPackage where
  dopamineSignal : Prop
  serotoninModulation : Prop
  noradrenalineArousal : Prop
  acetylcholineAttention : Prop
  rewardPredictionError : Prop
  valenceEncoding : Prop

structure NeuromodulatoryInfluencesEvidence (N : NeuromodulatoryInfluencesPackage) where
  dopamineSignalClosed : N.dopamineSignal
  serotoninModulationClosed : N.serotoninModulation
  noradrenalineArousalClosed : N.noradrenalineArousal
  acetylcholineAttentionClosed : N.acetylcholineAttention
  rewardPredictionErrorClosed : N.rewardPredictionError
  valenceEncodingClosed : N.valenceEncoding

def NeuromodulatoryInfluencesClosed (N : NeuromodulatoryInfluencesPackage) : Prop :=
  N.dopamineSignal ∧ N.serotoninModulation ∧ N.noradrenalineArousal ∧
  N.acetylcholineAttention ∧ N.rewardPredictionError ∧ N.valenceEncoding

theorem neuromodulatory_influences_closed_from_evidence
    (N : NeuromodulatoryInfluencesPackage)
    (E : NeuromodulatoryInfluencesEvidence N) : NeuromodulatoryInfluencesClosed N := by
  exact And.intro E.dopamineSignalClosed
    (And.intro E.serotoninModulationClosed
      (And.intro E.noradrenalineArousalClosed
        (And.intro E.acetylcholineAttentionClosed
          (And.intro E.rewardPredictionErrorClosed
            E.valenceEncodingClosed))))

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse