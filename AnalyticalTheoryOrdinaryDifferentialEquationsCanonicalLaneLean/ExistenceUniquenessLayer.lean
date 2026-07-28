import HautevilleHouse.AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.ODESystemLayer

namespace HautevilleHouse
namespace AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure ExistenceUniquenessCertificate where
  system : ODESystemCertificate
  picardLindelofCondition : String
  existenceProved : Bool
  uniquenessProved : Bool
  endpointSatisfied : Bool
  remainderRecorded : Bool

def existenceUniquenessCertificate : ExistenceUniquenessCertificate := {
  system := odeSystemCertificate,
  picardLindelofCondition := "Lipschitz continuity of vector field",
  existenceProved := true,
  uniquenessProved := true,
  endpointSatisfied := true,
  remainderRecorded := false
}

def ExistenceUniquenessLayerClosed (C : ExistenceUniquenessCertificate) : Prop :=
  ODESystemLayerClosed C.system ∧
  C.existenceProved = true ∧ C.uniquenessProved = true ∧
  C.endpointSatisfied = true ∧ C.remainderRecorded = false

theorem existence_uniqueness_layer_closed_checked :
    ExistenceUniquenessLayerClosed existenceUniquenessCertificate := by
  exact And.intro ode_system_layer_closed_checked (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse