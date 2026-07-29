import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure EnzymeKineticsMechanismPackage where
  enzymeConcentration : Type u
  substrateConcentration : Type v
  complexConcentration : Type w
  michaelisMentenModel : Prop
  competitiveInhibition : Prop
  allostericRegulation : Prop
  turnoverNumber : Prop

structure EnzymeKineticsMechanismEvidence (E : EnzymeKineticsMechanismPackage) where
  michaelisMentenModelClosed : E.michaelisMentenModel
  competitiveInhibitionClosed : E.competitiveInhibition
  allostericRegulationClosed : E.allostericRegulation
  turnoverNumberClosed : E.turnoverNumber

def EnzymeKineticsMechanismClosed (E : EnzymeKineticsMechanismPackage) : Prop :=
  E.michaelisMentenModel ∧ E.competitiveInhibition ∧
  E.allostericRegulation ∧ E.turnoverNumber

theorem enzyme_kinetics_mechanism_closed_from_evidence
    (E : EnzymeKineticsMechanismPackage) (Ev : EnzymeKineticsMechanismEvidence E) :
    EnzymeKineticsMechanismClosed E := by
  exact And.intro Ev.michaelisMentenModelClosed
    (And.intro Ev.competitiveInhibitionClosed
      (And.intro Ev.allostericRegulationClosed Ev.turnoverNumberClosed))

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse