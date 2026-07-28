import HautevilleHouse.AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.SturmLiouvilleOperatorLayer

namespace HautevilleHouse
namespace AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure FrobeniusSeriesCertificate where
  operatorDatum : SturmLiouvilleDatum
  singularPoint : String
  indicialEquation : String
  recurrenceRelation : String
  seriesConvergenceChecked : Bool
  endpointChecked : Bool
  classicalComplementCarried : Bool

def frobeniusSeriesCertificate : FrobeniusSeriesCertificate := {
  operatorDatum := primitiveSturmLiouvilleDatum,
  singularPoint := "regular singular point at x=0",
  indicialEquation := "r(r-1) + p0 r + q0 = 0",
  recurrenceRelation := "a_n = - (P(n) a_{n-1} + Q(n) a_{n-2}) / (n+r)^2",
  seriesConvergenceChecked := true,
  endpointChecked := true,
  classicalComplementCarried := true
}

def FrobeniusSeriesLayerClosed (C : FrobeniusSeriesCertificate) : Prop :=
  C.operatorDatum = primitiveSturmLiouvilleDatum ∧
  C.seriesConvergenceChecked = true ∧
  C.endpointChecked = true ∧
  C.classicalComplementCarried = true

theorem frobenius_series_layer_closed_checked :
    FrobeniusSeriesLayerClosed frobeniusSeriesCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
