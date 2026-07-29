import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile :=
  [{ path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "abc123", present := true }]

def reviewerChainSteps : List ReviewerChainStep :=
  [{ index := 1, label := "MM1" }, { index := 2, label := "MM2" }]

def reviewerClosureGates : List ReviewerClosureGate :=
  [{ gate := "CE_G1", constant := "kcat" }, { gate := "CE_G2", constant := "Km" }]

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 1 := by rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 2 := by rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 2 := by rfl

end ChemicalEngineeringBiochemicalEngineeringCanonicalLaneLean
end HautevilleHouse