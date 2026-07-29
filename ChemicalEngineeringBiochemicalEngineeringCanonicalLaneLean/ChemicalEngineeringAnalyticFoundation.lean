import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean.EnzymeKinetics
import ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean.ReactorDesign
import ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean.Thermodynamics

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure ChemicalEngineeringAnalyticFoundation where
  kinetics : EnzymeKineticsPackage
  kineticsEvidence : EnzymeKineticsEvidence kinetics
  reactor : ReactorDesignPackage kinetics
  reactorEvidence : ReactorDesignEvidence reactor
  thermodynamics : ThermodynamicsPackage reactor
  thermodynamicsEvidence : ThermodynamicsEvidence thermodynamics

def ChemicalEngineeringAnalyticFoundationClosed (A : ChemicalEngineeringAnalyticFoundation) : Prop :=
  EnzymeKineticsClosed A.kinetics ∧
  ReactorDesignClosed A.reactor ∧
  ThermodynamicsClosed A.thermodynamics

theorem chemical_engineering_analytic_foundation_closed_from_evidence
    (A : ChemicalEngineeringAnalyticFoundation) :
    ChemicalEngineeringAnalyticFoundationClosed A := by
  exact And.intro (enzyme_kinetics_closed_from_evidence A.kinetics A.kineticsEvidence)
    (And.intro (reactor_design_closed_from_evidence A.reactor A.reactorEvidence)
      (thermodynamics_closed_from_evidence A.thermodynamics A.thermodynamicsEvidence))

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse