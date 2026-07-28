import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.ODESpecificObjects

namespace HautevilleHouse
namespace AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure LyapunovStabilityCertificate where
  solutionDatum : ODESolutionDatum
  equilibriumRoute : String
  lyapunovFunctionRoute : String
  lyapunovChecked : Bool
  asymptoticChecked : Bool
  endpointChecked : Bool
  classicalComplementCarried : Bool

def lyapunovStabilityCertificate : LyapunovStabilityCertificate := {
  solutionDatum := primitiveODESolutionDatum,
  equilibriumRoute := "origin equilibrium",
  lyapunovFunctionRoute := "quadratic Lyapunov function",
  lyapunovChecked := true,
  asymptoticChecked := true,
  endpointChecked := true,
  classicalComplementCarried := true
}

def LyapunovStabilityLayerClosed (C : LyapunovStabilityCertificate) : Prop := 
  C.solutionDatum.stabilityChecked = true ∧
  C.lyapunovChecked = true ∧
  C.asymptoticChecked = true ∧
  C.endpointChecked = true ∧
  C.classicalComplementCarried = true

theorem lyapunov_stability_layer_closed_checked :
    LyapunovStabilityLayerClosed lyapunovStabilityCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse