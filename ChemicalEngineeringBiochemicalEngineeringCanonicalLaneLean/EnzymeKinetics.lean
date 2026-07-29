import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure EnzymeKineticsPackage where
  michaelisConstant : Type
  turnoverNumber : Type
  inhibitionModel : Type
  rateEquationFormulated : Prop
  steadyStateValid : Prop
  michaelisMentenApplicable : Prop

structure EnzymeKineticsEvidence (E : EnzymeKineticsPackage) where
  rateEquationFormulatedClosed : E.rateEquationFormulated
  steadyStateValidClosed : E.steadyStateValid
  michaelisMentenApplicableClosed : E.michaelisMentenApplicable

def EnzymeKineticsClosed (E : EnzymeKineticsPackage) : Prop :=
  E.rateEquationFormulated ∧ E.steadyStateValid ∧ E.michaelisMentenApplicable

theorem enzyme_kinetics_closed_from_evidence
    (E : EnzymeKineticsPackage) (Ev : EnzymeKineticsEvidence E) : EnzymeKineticsClosed E := by
  exact And.intro Ev.rateEquationFormulatedClosed
    (And.intro Ev.steadyStateValidClosed Ev.michaelisMentenApplicableClosed)

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse