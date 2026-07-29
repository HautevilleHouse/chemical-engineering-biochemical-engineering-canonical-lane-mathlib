import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineering

structure CatalysisPackage where
  catalystSurface : Prop
  adsorptionIsotherm : Prop
  surfaceReaction : Prop
  turnoverFrequency : Prop
  deactivationMechanism : Prop
  catalystSurfaceTerm : catalystSurface
  adsorptionIsothermTerm : adsorptionIsotherm
  surfaceReactionTerm : surfaceReaction
  turnoverFrequencyTerm : turnoverFrequency
  deactivationMechanismTerm : deactivationMechanism

structure CatalysisEvidence (C : CatalysisPackage) where
  catalystSurfaceClosed : C.catalystSurface
  adsorptionIsothermClosed : C.adsorptionIsotherm
  surfaceReactionClosed : C.surfaceReaction
  turnoverFrequencyClosed : C.turnoverFrequency
  deactivationMechanismClosed : C.deactivationMechanism

def CatalysisClosed (C : CatalysisPackage) : Prop :=
  C.catalystSurface ∧ C.adsorptionIsotherm ∧ C.surfaceReaction ∧ C.turnoverFrequency ∧ C.deactivationMechanism

theorem catalysis_closed_from_evidence (C : CatalysisPackage) (E : CatalysisEvidence C) : CatalysisClosed C := by
  exact And.intro E.catalystSurfaceClosed (And.intro E.adsorptionIsothermClosed (And.intro E.surfaceReactionClosed (And.intro E.turnoverFrequencyClosed E.deactivationMechanismClosed)))

end ChemicalEngineeringBiochemicalEngineering
end HautevilleHouse