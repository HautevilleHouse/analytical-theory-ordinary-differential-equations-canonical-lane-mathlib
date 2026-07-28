import AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ODEState where
  time : ℝ
  value : ℝ

def identityProjection (s : ODEState) : ODEState := s

theorem projection_idempotent (s : ODEState) : identityProjection (identityProjection s) = identityProjection s := rfl

end AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse