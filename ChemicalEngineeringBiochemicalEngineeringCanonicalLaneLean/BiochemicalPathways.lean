import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineering

structure BiochemicalPathwaysPackage where
  pathwayFlux : Prop
  enzymeKinetics : Prop
  metaboliteConcentration : Prop
  regulationFeedback : Prop
  stoichiometricModel : Prop
  pathwayFluxTerm : pathwayFlux
  enzymeKineticsTerm : enzymeKinetics
  metaboliteConcentrationTerm : metaboliteConcentration
  regulationFeedbackTerm : regulationFeedback
  stoichiometricModelTerm : stoichiometricModel

structure BiochemicalPathwaysEvidence (B : BiochemicalPathwaysPackage) where
  pathwayFluxClosed : B.pathwayFlux
  enzymeKineticsClosed : B.enzymeKinetics
  metaboliteConcentrationClosed : B.metaboliteConcentration
  regulationFeedbackClosed : B.regulationFeedback
  stoichiometricModelClosed : B.stoichiometricModel

def BiochemicalPathwaysClosed (B : BiochemicalPathwaysPackage) : Prop :=
  B.pathwayFlux ∧ B.enzymeKinetics ∧ B.metaboliteConcentration ∧ B.regulationFeedback ∧ B.stoichiometricModel

theorem biochemical_pathways_closed_from_evidence (B : BiochemicalPathwaysPackage) (E : BiochemicalPathwaysEvidence B) : BiochemicalPathwaysClosed B := by
  exact And.intro E.pathwayFluxClosed (And.intro E.enzymeKineticsClosed (And.intro E.metaboliteConcentrationClosed (And.intro E.regulationFeedbackClosed E.stoichiometricModelClosed)))

end ChemicalEngineeringBiochemicalEngineering
end HautevilleHouse
