import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure MetabolicFluxAnalysisPackage where
  stoichiometricMatrix : Type u
  fluxDistribution : Type v
  objectiveFunction : Prop
  fluxBalanceConstraints : Prop
  fluxVariabilityAnalysis : Prop

structure MetabolicFluxAnalysisEvidence (M : MetabolicFluxAnalysisPackage) where
  objectiveFunctionClosed : M.objectiveFunction
  fluxBalanceConstraintsClosed : M.fluxBalanceConstraints
  fluxVariabilityAnalysisClosed : M.fluxVariabilityAnalysis

def MetabolicFluxAnalysisClosed (M : MetabolicFluxAnalysisPackage) : Prop :=
  M.objectiveFunction ∧ M.fluxBalanceConstraints ∧ M.fluxVariabilityAnalysis

theorem metabolic_flux_analysis_closed_from_evidence
    (M : MetabolicFluxAnalysisPackage)
    (E : MetabolicFluxAnalysisEvidence M) : MetabolicFluxAnalysisClosed M := by
  exact And.intro E.objectiveFunctionClosed
    (And.intro E.fluxBalanceConstraintsClosed E.fluxVariabilityAnalysisClosed)

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse