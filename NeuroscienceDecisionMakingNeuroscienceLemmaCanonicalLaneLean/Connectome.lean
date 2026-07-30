import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean

structure ConnectomePackage where
  structuralConnectivity : Prop
  functionalConnectivity : Prop
  networkTopology : Prop
  smallWorldProperty : Prop
  modularOrganization : Prop
  hubIdentification : Prop

structure ConnectomeEvidence (C : ConnectomePackage) where
  structuralConnectivityClosed : C.structuralConnectivity
  functionalConnectivityClosed : C.functionalConnectivity
  networkTopologyClosed : C.networkTopology
  smallWorldPropertyClosed : C.smallWorldProperty
  modularOrganizationClosed : C.modularOrganization
  hubIdentificationClosed : C.hubIdentification

def ConnectomeClosed (C : ConnectomePackage) : Prop :=
  C.structuralConnectivity ∧ C.functionalConnectivity ∧ C.networkTopology ∧ C.smallWorldProperty ∧ C.modularOrganization ∧ C.hubIdentification

theorem connectome_closed_from_evidence (C : ConnectomePackage) (E : ConnectomeEvidence C) :
    ConnectomeClosed C := by
  exact And.intro E.structuralConnectivityClosed (And.intro E.functionalConnectivityClosed (And.intro E.networkTopologyClosed (And.intro E.smallWorldPropertyClosed (And.intro E.modularOrganizationClosed E.hubIdentificationClosed))))

end NeuroscienceDecisionMakingNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse