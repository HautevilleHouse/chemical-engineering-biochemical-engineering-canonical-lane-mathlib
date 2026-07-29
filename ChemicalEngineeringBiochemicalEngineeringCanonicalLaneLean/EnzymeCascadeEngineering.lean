import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure EnzymeCascadeEngineeringPackage where
  enzymeSequence : List Type
  pathwayIntermediates : Prop
  fluxBalanceAnalysis : Prop
  thermodynamicFeasibility : Prop
  cofactorRegeneration : Prop

structure EnzymeCascadeEngineeringEvidence (E : EnzymeCascadeEngineeringPackage) where
  pathwayIntermediatesClosed : E.pathwayIntermediates
  fluxBalanceAnalysisClosed : E.fluxBalanceAnalysis
  thermodynamicFeasibilityClosed : E.thermodynamicFeasibility
  cofactorRegenerationClosed : E.cofactorRegeneration

def EnzymeCascadeEngineeringClosed (E : EnzymeCascadeEngineeringPackage) : Prop :=
  E.pathwayIntermediates ∧ E.fluxBalanceAnalysis ∧
  E.thermodynamicFeasibility ∧ E.cofactorRegeneration

theorem enzyme_cascade_engineering_closed_from_evidence
    (E : EnzymeCascadeEngineeringPackage)
    (Ev : EnzymeCascadeEngineeringEvidence E) : EnzymeCascadeEngineeringClosed E := by
  exact And.intro Ev.pathwayIntermediatesClosed
    (And.intro Ev.fluxBalanceAnalysisClosed
      (And.intro Ev.thermodynamicFeasibilityClosed Ev.cofactorRegenerationClosed))

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse