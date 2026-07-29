import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure CellCultureGrowthModelPackage where
  viableCellDensity : Type u
  specificGrowthRate : Type v
  nutrientLimitation : Prop
  productInhibition : Prop
  deathKinetics : Prop
  logisticGrowthModel : Prop

structure CellCultureGrowthModelEvidence (C : CellCultureGrowthModelPackage) where
  nutrientLimitationClosed : C.nutrientLimitation
  productInhibitionClosed : C.productInhibition
  deathKineticsClosed : C.deathKinetics
  logisticGrowthModelClosed : C.logisticGrowthModel

def CellCultureGrowthModelClosed (C : CellCultureGrowthModelPackage) : Prop :=
  C.nutrientLimitation ∧ C.productInhibition ∧
  C.deathKinetics ∧ C.logisticGrowthModel

theorem cell_culture_growth_model_closed_from_evidence
    (C : CellCultureGrowthModelPackage) (E : CellCultureGrowthModelEvidence C) :
    CellCultureGrowthModelClosed C := by
  exact And.intro E.nutrientLimitationClosed
    (And.intro E.productInhibitionClosed
      (And.intro E.deathKineticsClosed E.logisticGrowthModelClosed))

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse