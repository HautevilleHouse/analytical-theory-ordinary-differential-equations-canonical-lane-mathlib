import HautevilleHouse.AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

def ConstrainedODEClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ode_endgame (A : AdmissibleClass) :
    ConstrainedODEClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

def NativeClosureTheorem (A : AdmissibleClass) : Prop :=
  ConstrainedODEClosure A

theorem native_closure_theorem_checked (A : AdmissibleClass) :
    NativeClosureTheorem A := by
  exact constrained_ode_endgame A

end AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
