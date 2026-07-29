import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineering

structure MassTransferPackage where
  diffusionEquation : Prop
  concentrationProfile : Prop
  massFlux : Prop
  boundaryLayer : Prop
  massTransferCoefficient : Prop
  diffusionEquationTerm : diffusionEquation
  concentrationProfileTerm : concentrationProfile
  massFluxTerm : massFlux
  boundaryLayerTerm : boundaryLayer
  massTransferCoefficientTerm : massTransferCoefficient

structure MassTransferEvidence (M : MassTransferPackage) where
  diffusionEquationClosed : M.diffusionEquation
  concentrationProfileClosed : M.concentrationProfile
  massFluxClosed : M.massFlux
  boundaryLayerClosed : M.boundaryLayer
  massTransferCoefficientClosed : M.massTransferCoefficient

def MassTransferClosed (M : MassTransferPackage) : Prop :=
  M.diffusionEquation ∧ M.concentrationProfile ∧ M.massFlux ∧ M.boundaryLayer ∧ M.massTransferCoefficient

theorem mass_transfer_closed_from_evidence (M : MassTransferPackage) (E : MassTransferEvidence M) : MassTransferClosed M := by
  exact And.intro E.diffusionEquationClosed (And.intro E.concentrationProfileClosed (And.intro E.massFluxClosed (And.intro E.boundaryLayerClosed E.massTransferCoefficientClosed)))

end ChemicalEngineeringBiochemicalEngineering
end HautevilleHouse