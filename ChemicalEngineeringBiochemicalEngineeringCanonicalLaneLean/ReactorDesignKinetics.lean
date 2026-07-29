import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLawFormulated : Prop
  temperatureDependenceModeled : Prop
  activationEnergyIdentified : Prop
  reactionOrderDetermined : Prop
  catalyticMechanismProposed : Prop

structure ReactionKineticsEvidence (K : ReactionKineticsPackage) where
  rateLawFormulatedClosed : K.rateLawFormulated
  temperatureDependenceModeledClosed : K.temperatureDependenceModeled
  activationEnergyIdentifiedClosed : K.activationEnergyIdentified
  reactionOrderDeterminedClosed : K.reactionOrderDetermined
  catalyticMechanismProposedClosed : K.catalyticMechanismProposed

def ReactionKineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.rateLawFormulated ∧ K.temperatureDependenceModeled ∧
  K.activationEnergyIdentified ∧ K.reactionOrderDetermined ∧
  K.catalyticMechanismProposed

theorem reaction_kinetics_closed_from_evidence (K : ReactionKineticsPackage) (E : ReactionKineticsEvidence K) :
    ReactionKineticsClosed K := by
  exact And.intro E.rateLawFormulatedClosed
    (And.intro E.temperatureDependenceModeledClosed
      (And.intro E.activationEnergyIdentifiedClosed
        (And.intro E.reactionOrderDeterminedClosed
          E.catalyticMechanismProposedClosed)))

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse
