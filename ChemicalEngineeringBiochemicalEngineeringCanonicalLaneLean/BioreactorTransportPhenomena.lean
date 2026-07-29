import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure TransportPhenomenaPackage where
  massTransferCoefficientDefined : Prop
  heatTransferModelFormulated : Prop
  momentumTransferAccounted : Prop
  bioreactorGeometrySpecified : Prop
  dimensionlessGroupsIdentified : Prop

structure TransportPhenomenaEvidence (T : TransportPhenomenaPackage) where
  massTransferCoefficientDefinedClosed : T.massTransferCoefficientDefined
  heatTransferModelFormulatedClosed : T.heatTransferModelFormulated
  momentumTransferAccountedClosed : T.momentumTransferAccounted
  bioreactorGeometrySpecifiedClosed : T.bioreactorGeometrySpecified
  dimensionlessGroupsIdentifiedClosed : T.dimensionlessGroupsIdentified

def TransportPhenomenaClosed (T : TransportPhenomenaPackage) : Prop :=
  T.massTransferCoefficientDefined ∧ T.heatTransferModelFormulated ∧
  T.momentumTransferAccounted ∧ T.bioreactorGeometrySpecified ∧
  T.dimensionlessGroupsIdentified

theorem transport_phenomena_closed_from_evidence (T : TransportPhenomenaPackage) (E : TransportPhenomenaEvidence T) :
    TransportPhenomenaClosed T := by
  exact And.intro E.massTransferCoefficientDefinedClosed
    (And.intro E.heatTransferModelFormulatedClosed
      (And.intro E.momentumTransferAccountedClosed
        (And.intro E.bioreactorGeometrySpecifiedClosed
          E.dimensionlessGroupsIdentifiedClosed)))

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse
