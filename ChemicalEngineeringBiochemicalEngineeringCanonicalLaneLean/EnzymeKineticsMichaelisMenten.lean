import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure EnzymeKineticsMichaelisMentenPackage where
  enzymeConcentration : Type u
  substrateConcentration : Type v
  complexFormation : Prop
  steadyStateAssumption : Prop
  michaelisMentenEquation : Prop

structure EnzymeKineticsMichaelisMentenEvidence
    (E : EnzymeKineticsMichaelisMentenPackage) where
  complexFormationClosed : E.complexFormation
  steadyStateAssumptionClosed : E.steadyStateAssumption
  michaelisMentenEquationClosed : E.michaelisMentenEquation

def EnzymeKineticsMichaelisMentenClosed
    (E : EnzymeKineticsMichaelisMentenPackage) : Prop :=
  E.complexFormation ∧ E.steadyStateAssumption ∧ E.michaelisMentenEquation

theorem enzyme_kinetics_michaelis_menten_closed_from_evidence
    (E : EnzymeKineticsMichaelisMentenPackage)
    (Ev : EnzymeKineticsMichaelisMentenEvidence E) :
    EnzymeKineticsMichaelisMentenClosed E := by
  exact And.intro Ev.complexFormationClosed
    (And.intro Ev.steadyStateAssumptionClosed
      Ev.michaelisMentenEquationClosed)

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse