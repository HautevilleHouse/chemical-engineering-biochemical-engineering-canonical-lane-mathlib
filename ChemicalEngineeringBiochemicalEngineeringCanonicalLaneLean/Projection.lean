import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure ChemicalEngineeringState where
  kineticsAdmitted : PrimitiveEnzymeKinetics
  reactorAdmitted : PrimitiveReactorDesign
  thermodynamicsAdmitted : PrimitiveThermodynamics

def chemicalEngineeringProjection : Projection ChemicalEngineeringState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem chemical_engineering_projection_idempotent (x : ChemicalEngineeringState) :
    chemicalEngineeringProjection.toFun (chemicalEngineeringProjection.toFun x) = chemicalEngineeringProjection.toFun x := by
  exact chemicalEngineeringProjection.idempotent x

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse