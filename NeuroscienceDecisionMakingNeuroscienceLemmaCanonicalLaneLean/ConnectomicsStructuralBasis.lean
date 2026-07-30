import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure ConnectomicsStructuralBasisPackage where
  neuronGraph : Type
  edgeWeights : neuronGraph → neuronGraph → ℝ
  connectivityMatrix : Prop
  graphConnectivityClosed : Prop
  edgeWeightsClosed : Prop
  connectivityMatrixClosed : connectivityMatrix

structure ConnectomicsStructuralBasisEvidence (C : ConnectomicsStructuralBasisPackage) where
  graphConnectivityClosed : C.graphConnectivityClosed
  edgeWeightsClosed : C.edgeWeightsClosed
  connectivityMatrixClosed : C.connectivityMatrix

def ConnectomicsStructuralBasisClosed (C : ConnectomicsStructuralBasisPackage) : Prop :=
  C.graphConnectivityClosed ∧ C.edgeWeightsClosed ∧ C.connectivityMatrix

theorem connectomics_closed_from_evidence (C : ConnectomicsStructuralBasisPackage)
    (E : ConnectomicsStructuralBasisEvidence C) : ConnectomicsStructuralBasisClosed C := by
  exact And.intro E.graphConnectivityClosed (And.intro E.edgeWeightsClosed E.connectivityMatrixClosed)

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse
