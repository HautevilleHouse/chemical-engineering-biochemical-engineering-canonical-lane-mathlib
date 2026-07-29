import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure ReactionKineticsPackage where
  speciesConcentration : Type u
  rateExpressions : Type v
  massActionLaw : Prop
  equilibriumConstant : Prop
  temperatureDependence : Prop

structure ReactionKineticsEvidence (K : ReactionKineticsPackage) where
  massActionLawClosed : K.massActionLaw
  equilibriumConstantClosed : K.equilibriumConstant
  temperatureDependenceClosed : K.temperatureDependence

def ReactionKineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.massActionLaw ∧ K.equilibriumConstant ∧ K.temperatureDependence

theorem reaction_kinetics_closed_from_evidence (K : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence K) : ReactionKineticsClosed K := by
  exact And.intro E.massActionLawClosed
    (And.intro E.equilibriumConstantClosed E.temperatureDependenceClosed)

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse