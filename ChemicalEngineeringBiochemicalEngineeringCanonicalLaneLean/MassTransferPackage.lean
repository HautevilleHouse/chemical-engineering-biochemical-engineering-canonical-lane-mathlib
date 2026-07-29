import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure MassTransferPackage where
  filmModel : Prop
  diffusionCoefficient : Prop
  convectiveMassTransfer : Prop
  overallTransferCoefficient : Prop

structure MassTransferEvidence (M : MassTransferPackage) where
  filmModelClosed : M.filmModel
  diffusionCoefficientClosed : M.diffusionCoefficient
  convectiveMassTransferClosed : M.convectiveMassTransfer
  overallTransferCoefficientClosed : M.overallTransferCoefficient

def MassTransferClosed (M : MassTransferPackage) : Prop :=
  M.filmModel ∧ M.diffusionCoefficient ∧ M.convectiveMassTransfer ∧ M.overallTransferCoefficient

theorem mass_transfer_closed_from_evidence (M : MassTransferPackage)
    (E : MassTransferEvidence M) : MassTransferClosed M := by
  exact And.intro E.filmModelClosed
    (And.intro E.diffusionCoefficientClosed
      (And.intro E.convectiveMassTransferClosed E.overallTransferCoefficientClosed))

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse