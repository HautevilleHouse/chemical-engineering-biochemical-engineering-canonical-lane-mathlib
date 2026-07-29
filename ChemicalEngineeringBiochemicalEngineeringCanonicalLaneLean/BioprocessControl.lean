import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure BioprocessControlPackage where
  sensorModel : Type u
  controllerType : Type v
  setpointTracking : Prop
  disturbanceRejection : Prop
  stabilityMargin : Prop

structure BioprocessControlEvidence (C : BioprocessControlPackage) where
  setpointTrackingClosed : C.setpointTracking
  disturbanceRejectionClosed : C.disturbanceRejection
  stabilityMarginClosed : C.stabilityMargin

def BioprocessControlClosed (C : BioprocessControlPackage) : Prop :=
  C.setpointTracking ∧ C.disturbanceRejection ∧ C.stabilityMargin

theorem bioprocess_control_closed_from_evidence (C : BioprocessControlPackage)
    (E : BioprocessControlEvidence C) : BioprocessControlClosed C := by
  exact And.intro E.setpointTrackingClosed
    (And.intro E.disturbanceRejectionClosed E.stabilityMarginClosed)

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse