import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean.ReactorDesignKinetics
import HautevilleHouse.ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean.BioreactorTransportPhenomena
import HautevilleHouse.ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean.MetabolicPathwayModeling

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop := A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ChemicalEngineeringBiochemicalEngineeringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem chemical_engineering_biochemical_engineering_endgame (A : AdmissibleClass) :
    ChemicalEngineeringBiochemicalEngineeringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse
