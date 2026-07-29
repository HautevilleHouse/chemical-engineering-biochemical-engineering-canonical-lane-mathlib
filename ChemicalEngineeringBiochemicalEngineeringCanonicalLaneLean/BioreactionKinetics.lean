import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure BioreactionKineticsPackage where
  substrate : Type u
  product : Type v
  enzyme : Type w
  reactionRate : Prop
  michaelisMentenConstant : Prop
  turnoverNumber : Prop
  inhibitionModel : Prop

structure BioreactionKineticsEvidence (K : BioreactionKineticsPackage) where
  reactionRateClosed : K.reactionRate
  michaelisMentenConstantClosed : K.michaelisMentenConstant
  turnoverNumberClosed : K.turnoverNumber
  inhibitionModelClosed : K.inhibitionModel

def BioreactionKineticsClosed (K : BioreactionKineticsPackage) : Prop :=
  K.reactionRate ∧ K.michaelisMentenConstant ∧ K.turnoverNumber ∧ K.inhibitionModel

theorem bioreaction_kinetics_closed_from_evidence (K : BioreactionKineticsPackage)
    (E : BioreactionKineticsEvidence K) : BioreactionKineticsClosed K := by
  exact And.intro E.reactionRateClosed
    (And.intro E.michaelisMentenConstantClosed
      (And.intro E.turnoverNumberClosed E.inhibitionModelClosed))

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse