import CanonicalLane.ChemicalEngineeringBiochemicalEngineering.BridgeLemmas

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse