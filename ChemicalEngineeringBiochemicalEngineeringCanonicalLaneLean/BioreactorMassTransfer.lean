import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure BioreactorMassTransferPackage where
  gasLiquidInterface : Type u
  oxygenTransferRate : Type v
  volumetricMassTransferCoefficient : Type w
  kLaCorrelation : Prop
  oxygenUptakeRate : Prop
  massTransferLimitation : Prop

structure BioreactorMassTransferEvidence (B : BioreactorMassTransferPackage) where
  kLaCorrelationClosed : B.kLaCorrelation
  oxygenUptakeRateClosed : B.oxygenUptakeRate
  massTransferLimitationClosed : B.massTransferLimitation

def BioreactorMassTransferClosed (B : BioreactorMassTransferPackage) : Prop :=
  B.kLaCorrelation ∧ B.oxygenUptakeRate ∧ B.massTransferLimitation

theorem bioreactor_mass_transfer_closed_from_evidence
    (B : BioreactorMassTransferPackage) (E : BioreactorMassTransferEvidence B) :
    BioreactorMassTransferClosed B := by
  exact And.intro E.kLaCorrelationClosed
    (And.intro E.oxygenUptakeRateClosed E.massTransferLimitationClosed)

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse