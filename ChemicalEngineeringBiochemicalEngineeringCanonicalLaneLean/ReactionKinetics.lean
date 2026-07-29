import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineering

structure ReactionKineticsPackage where
  rateLaw : Prop
  rateConstant : Prop
  activationEnergy : Prop
  temperatureDependence : Prop
  mechanisticStep : Prop
  rateLawTerm : rateLaw
  rateConstantTerm : rateConstant
  activationEnergyTerm : activationEnergy
  temperatureDependenceTerm : temperatureDependence
  mechanisticStepTerm : mechanisticStep

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw
  rateConstantClosed : R.rateConstant
  activationEnergyClosed : R.activationEnergy
  temperatureDependenceClosed : R.temperatureDependence
  mechanisticStepClosed : R.mechanisticStep

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.rateConstant ∧ R.activationEnergy ∧ R.temperatureDependence ∧ R.mechanisticStep

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed (And.intro E.rateConstantClosed (And.intro E.activationEnergyClosed (And.intro E.temperatureDependenceClosed E.mechanisticStepClosed)))

end ChemicalEngineeringBiochemicalEngineering
end HautevilleHouse