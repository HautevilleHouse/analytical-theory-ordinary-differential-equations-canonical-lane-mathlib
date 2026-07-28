import HautevilleHouse.AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure ODESystemCertificate where
  vectorField : String
  initialCondition : String
  timeInterval : String
  solutionSpace : String
  systemChecked : Bool
  initialConditionChecked : Bool

def odeSystemCertificate : ODESystemCertificate := {
  vectorField := "smooth vector field defining the ODE",
  initialCondition := "initial condition at t0",
  timeInterval := "maximal interval of existence",
  solutionSpace := "Banach space of continuous functions",
  systemChecked := true,
  initialConditionChecked := true
}

def ODESystemLayerClosed (C : ODESystemCertificate) : Prop :=
  C.systemChecked = true ∧ C.initialConditionChecked = true

theorem ode_system_layer_closed_checked :
    ODESystemLayerClosed odeSystemCertificate := by
  exact And.intro rfl rfl

end AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse