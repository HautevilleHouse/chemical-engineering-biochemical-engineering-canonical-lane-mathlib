import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean.EnzymeKinetics

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure ReactorDesignPackage (E : EnzymeKineticsPackage) where
  reactorTypeChosen : Prop
  materialBalanceDerived : Prop
  energyBalanceDerived : Prop
  conversionCalculated : Prop
  designEquationFormulated : Prop

structure ReactorDesignEvidence {E : EnzymeKineticsPackage} (R : ReactorDesignPackage E) where
  reactorTypeChosenClosed : R.reactorTypeChosen
  materialBalanceDerivedClosed : R.materialBalanceDerived
  energyBalanceDerivedClosed : R.energyBalanceDerived
  conversionCalculatedClosed : R.conversionCalculated
  designEquationFormulatedClosed : R.designEquationFormulated

def ReactorDesignClosed {E : EnzymeKineticsPackage} (R : ReactorDesignPackage E) : Prop :=
  R.reactorTypeChosen ∧ R.materialBalanceDerived ∧ R.energyBalanceDerived ∧
  R.conversionCalculated ∧ R.designEquationFormulated

theorem reactor_design_closed_from_evidence
    {E : EnzymeKineticsPackage} (R : ReactorDesignPackage E)
    (Ev : ReactorDesignEvidence R) : ReactorDesignClosed R := by
  exact And.intro Ev.reactorTypeChosenClosed
    (And.intro Ev.materialBalanceDerivedClosed
      (And.intro Ev.energyBalanceDerivedClosed
        (And.intro Ev.conversionCalculatedClosed Ev.designEquationFormulatedClosed)))

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse