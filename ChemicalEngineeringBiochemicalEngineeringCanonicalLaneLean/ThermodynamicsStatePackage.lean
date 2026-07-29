import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure ThermodynamicsStatePackage where
  internalEnergy : Type u
  entropyExplicit : Type v
  gibbsFreeEnergy : Type w
  phaseEquilibrium : Prop
  thermodynamicConsistency : Prop

structure ThermodynamicsStateEvidence (T : ThermodynamicsStatePackage) where
  phaseEquilibriumClosed : T.phaseEquilibrium
  thermodynamicConsistencyClosed : T.thermodynamicConsistency

def ThermodynamicsStateClosed (T : ThermodynamicsStatePackage) : Prop :=
  T.phaseEquilibrium ∧ T.thermodynamicConsistency

theorem thermodynamics_state_closed_from_evidence (T : ThermodynamicsStatePackage)
    (E : ThermodynamicsStateEvidence T) : ThermodynamicsStateClosed T := by
  exact And.intro E.phaseEquilibriumClosed E.thermodynamicConsistencyClosed

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse