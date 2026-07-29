import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure PrimitiveEnzymeKinetics where
  substrateConcentration : Type
  productConcentration : Type
  enzymeConcentration : Type
  reactionRate : Type
  michaelisMentenModel : Prop
  initialRateDetermined : Prop
  steadyStateAssumption : Prop
  michaelisMentenModelTerm : michaelisMentenModel
  initialRateDeterminedTerm : initialRateDetermined
  steadyStateAssumptionTerm : steadyStateAssumption

structure PrimitiveReactorDesign where
  reactorType : Type
  flowConfiguration : Type
  massBalance : Prop
  energyBalance : Prop
  conversion : Prop
  massBalanceTerm : massBalance
  energyBalanceTerm : energyBalance
  conversionTerm : conversion

structure PrimitiveThermodynamics where
  gibbsFreeEnergy : Type
  enthalpy : Type
  entropy : Type
  equilibriumConstant : Type
  thermodynamicConsistency : Prop
  equilibriumCondition : Prop
  thermodynamicConsistencyTerm : thermodynamicConsistency
  equilibriumConditionTerm : equilibriumCondition

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse