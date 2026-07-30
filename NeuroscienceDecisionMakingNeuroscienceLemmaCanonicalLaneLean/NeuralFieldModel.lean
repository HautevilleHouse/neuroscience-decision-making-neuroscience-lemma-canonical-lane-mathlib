import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure NeuralFieldModelPackage where
  fieldDynamics : Type u
  connectivityKernel : Type v
  bumpSolutions : Prop
  travelingWaves : Prop
  patternFormation : Prop

structure NeuralFieldModelEvidence (F : NeuralFieldModelPackage) where
  bumpSolutionsClosed : F.bumpSolutions
  travelingWavesClosed : F.travelingWaves
  patternFormationClosed : F.patternFormation

def NeuralFieldModelClosed (F : NeuralFieldModelPackage) : Prop :=
  F.bumpSolutions ∧ F.travelingWaves ∧ F.patternFormation

theorem neural_field_model_closed_from_evidence (F : NeuralFieldModelPackage) (E : NeuralFieldModelEvidence F) :
    NeuralFieldModelClosed F := by
  exact And.intro E.bumpSolutionsClosed (And.intro E.travelingWavesClosed E.patternFormationClosed)

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse