import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  connectomeGraph : Type u
  nodeConnectivity : Prop
  edgeWeights : Type v
  networkDynamics : Prop
  smallWorldProperty : Prop
  modularStructure : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  nodeConnectivityClosed : C.nodeConnectivity
  networkDynamicsClosed : C.networkDynamics
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.nodeConnectivity ∧ C.networkDynamics ∧ C.smallWorldProperty ∧ C.modularStructure

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage)
    (E : ConnectomicsEvidence C) : ConnectomicsClosed C := by
  exact And.intro E.nodeConnectivityClosed (And.intro E.networkDynamicsClosed
    (And.intro E.smallWorldPropertyClosed E.modularStructureClosed))

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse