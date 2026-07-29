import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure MetabolicPathwayPackage where
  reactionStoichiometryDefined : Prop
  enzymeKineticsIncluded : Prop
  pathwayFluxBalanced : Prop
  regulatoryMechanismsModeled : Prop
  thermodynamicFeasibilityChecked : Prop

structure MetabolicPathwayEvidence (M : MetabolicPathwayPackage) where
  reactionStoichiometryDefinedClosed : M.reactionStoichiometryDefined
  enzymeKineticsIncludedClosed : M.enzymeKineticsIncluded
  pathwayFluxBalancedClosed : M.pathwayFluxBalanced
  regulatoryMechanismsModeledClosed : M.regulatoryMechanismsModeled
  thermodynamicFeasibilityCheckedClosed : M.thermodynamicFeasibilityChecked

def MetabolicPathwayClosed (M : MetabolicPathwayPackage) : Prop :=
  M.reactionStoichiometryDefined ∧ M.enzymeKineticsIncluded ∧
  M.pathwayFluxBalanced ∧ M.regulatoryMechanismsModeled ∧
  M.thermodynamicFeasibilityChecked

theorem metabolic_pathway_closed_from_evidence (M : MetabolicPathwayPackage) (E : MetabolicPathwayEvidence M) :
    MetabolicPathwayClosed M := by
  exact And.intro E.reactionStoichiometryDefinedClosed
    (And.intro E.enzymeKineticsIncludedClosed
      (And.intro E.pathwayFluxBalancedClosed
        (And.intro E.regulatoryMechanismsModeledClosed
          E.thermodynamicFeasibilityCheckedClosed)))

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse
