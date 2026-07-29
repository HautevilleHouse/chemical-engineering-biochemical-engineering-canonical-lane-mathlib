import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure BioreactorDesignPackage where
  reactorType : Type u
  operationMode : Type v
  massBalance : Prop
  energyBalance : Prop
  sterilityAssurance : Prop

structure BioreactorDesignEvidence (D : BioreactorDesignPackage) where
  massBalanceClosed : D.massBalance
  energyBalanceClosed : D.energyBalance
  sterilityAssuranceClosed : D.sterilityAssurance

def BioreactorDesignClosed (D : BioreactorDesignPackage) : Prop :=
  D.massBalance ∧ D.energyBalance ∧ D.sterilityAssurance

theorem bioreactor_design_closed_from_evidence (D : BioreactorDesignPackage)
    (E : BioreactorDesignEvidence D) : BioreactorDesignClosed D := by
  exact And.intro E.massBalanceClosed
    (And.intro E.energyBalanceClosed E.sterilityAssuranceClosed)

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse