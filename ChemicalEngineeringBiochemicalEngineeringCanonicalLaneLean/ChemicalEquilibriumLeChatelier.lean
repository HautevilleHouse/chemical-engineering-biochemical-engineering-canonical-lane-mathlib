import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure ChemicalEquilibriumLeChatelierPackage where
  reactionQuotient : Type u
  equilibriumConstant : Type v
  leChatelierPrinciple : Prop
  vanHoffEquation : Prop
  equilibriumComposition : Prop

structure ChemicalEquilibriumLeChatelierEvidence
    (C : ChemicalEquilibriumLeChatelierPackage) where
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  vanHoffEquationClosed : C.vanHoffEquation
  equilibriumCompositionClosed : C.equilibriumComposition

def ChemicalEquilibriumLeChatelierClosed
    (C : ChemicalEquilibriumLeChatelierPackage) : Prop :=
  C.leChatelierPrinciple ∧ C.vanHoffEquation ∧ C.equilibriumComposition

theorem chemical_equilibrium_le_chatelier_closed_from_evidence
    (C : ChemicalEquilibriumLeChatelierPackage)
    (E : ChemicalEquilibriumLeChatelierEvidence C) :
    ChemicalEquilibriumLeChatelierClosed C := by
  exact And.intro E.leChatelierPrincipleClosed
    (And.intro E.vanHoffEquationClosed E.equilibriumCompositionClosed)

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse