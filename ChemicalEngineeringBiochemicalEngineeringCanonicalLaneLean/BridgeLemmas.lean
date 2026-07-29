import CanonicalLane.ChemicalEngineeringBiochemicalEngineering.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChemicalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse