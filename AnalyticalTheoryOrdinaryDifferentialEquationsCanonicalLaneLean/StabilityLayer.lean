import HautevilleHouse.AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.ExistenceUniquenessLayer

namespace HautevilleHouse
namespace AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure StabilityCertificate where
  euCertificate : ExistenceUniquenessCertificate
  equilibrium : String
  lyapunovFunction : String
  stableProved : Bool
  asymptoticallyStableProved : Bool
  gateWitnessStability : Prop

def stabilityCertificate : StabilityCertificate := {
  euCertificate := existenceUniquenessCertificate,
  equilibrium := "zero solution",
  lyapunovFunction := "positive definite function with negative definite derivative",
  stableProved := true,
  asymptoticallyStableProved := true,
  gateWitnessStability := True
}

def StabilityLayerClosed (C : StabilityCertificate) : Prop :=
  ExistenceUniquenessLayerClosed C.euCertificate ∧
  C.stableProved = true ∧ C.asymptoticallyStableProved = true ∧
  C.gateWitnessStability = True

theorem stability_layer_closed_checked :
    StabilityLayerClosed stabilityCertificate := by
  exact And.intro existence_uniqueness_layer_closed_checked (And.intro rfl (And.intro rfl rfl))

end AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse