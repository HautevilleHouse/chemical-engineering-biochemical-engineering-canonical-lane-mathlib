import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure BiochemicalReactorKineticsPackage where
  substrateConcentration : Type u
  biomassConcentration : Type v
  productConcentration : Type w
  growthRateModel : Prop
  substrateUptakeKinetics : Prop
  productFormationKinetics : Prop
  inhibitionEffects : Prop

structure BiochemicalReactorKineticsEvidence (R : BiochemicalReactorKineticsPackage) where
  growthRateModelClosed : R.growthRateModel
  substrateUptakeKineticsClosed : R.substrateUptakeKinetics
  productFormationKineticsClosed : R.productFormationKinetics
  inhibitionEffectsClosed : R.inhibitionEffects

def BiochemicalReactorKineticsClosed (R : BiochemicalReactorKineticsPackage) : Prop :=
  R.growthRateModel ∧ R.substrateUptakeKinetics ∧
  R.productFormationKinetics ∧ R.inhibitionEffects

theorem biochemical_reactor_kinetics_closed_from_evidence
    (R : BiochemicalReactorKineticsPackage) (E : BiochemicalReactorKineticsEvidence R) :
    BiochemicalReactorKineticsClosed R := by
  exact And.intro E.growthRateModelClosed
    (And.intro E.substrateUptakeKineticsClosed
      (And.intro E.productFormationKineticsClosed E.inhibitionEffectsClosed))

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse