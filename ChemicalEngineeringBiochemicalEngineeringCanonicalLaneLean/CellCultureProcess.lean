import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure CellCultureProcessPackage where
  cellLine : Type u
  mediumComposition : Prop
  growthKinetics : Prop
  productFormation : Prop
  metabolismModel : Prop

structure CellCultureProcessEvidence (C : CellCultureProcessPackage) where
  mediumCompositionClosed : C.mediumComposition
  growthKineticsClosed : C.growthKinetics
  productFormationClosed : C.productFormation
  metabolismModelClosed : C.metabolismModel

def CellCultureProcessClosed (C : CellCultureProcessPackage) : Prop :=
  C.mediumComposition ∧ C.growthKinetics ∧ C.productFormation ∧ C.metabolismModel

theorem cell_culture_process_closed_from_evidence (C : CellCultureProcessPackage)
    (E : CellCultureProcessEvidence C) : CellCultureProcessClosed C := by
  exact And.intro E.mediumCompositionClosed
    (And.intro E.growthKineticsClosed
      (And.intro E.productFormationClosed E.metabolismModelClosed))

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse