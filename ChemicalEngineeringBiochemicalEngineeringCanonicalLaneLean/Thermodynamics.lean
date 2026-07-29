import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean.ReactorDesign

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure ThermodynamicsPackage {E : EnzymeKineticsPackage} (R : ReactorDesignPackage E) where
  gibbsFreeEnergyMinimized : Prop
  equilibriumConstantDefined : Prop
  phaseEquilibriumSatisfied : Prop
  thermodynamicConsistencyEstablished : Prop

structure ThermodynamicsEvidence {E : EnzymeKineticsPackage} {R : ReactorDesignPackage E}
    (T : ThermodynamicsPackage R) where
  gibbsFreeEnergyMinimizedClosed : T.gibbsFreeEnergyMinimized
  equilibriumConstantDefinedClosed : T.equilibriumConstantDefined
  phaseEquilibriumSatisfiedClosed : T.phaseEquilibriumSatisfied
  thermodynamicConsistencyEstablishedClosed : T.thermodynamicConsistencyEstablished

def ThermodynamicsClosed {E : EnzymeKineticsPackage} {R : ReactorDesignPackage E}
    (T : ThermodynamicsPackage R) : Prop :=
  T.gibbsFreeEnergyMinimized ∧ T.equilibriumConstantDefined ∧
  T.phaseEquilibriumSatisfied ∧ T.thermodynamicConsistencyEstablished

theorem thermodynamics_closed_from_evidence
    {E : EnzymeKineticsPackage} {R : ReactorDesignPackage E}
    (T : ThermodynamicsPackage R) (Ev : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro Ev.gibbsFreeEnergyMinimizedClosed
    (And.intro Ev.equilibriumConstantDefinedClosed
      (And.intro Ev.phaseEquilibriumSatisfiedClosed Ev.thermodynamicConsistencyEstablishedClosed))

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse