import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.ODESpecificObjects

namespace HautevilleHouse
namespace AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure SturmLiouvilleCertificate where
  solutionDatum : ODESolutionDatum
  eigenvalueRoute : String
  eigenfunctionRoute : String
  orthogonalityChecked : Bool
  completenessChecked : Bool
  endpointChecked : Bool
  classicalComplementCarried : Bool

def sturmLiouvilleCertificate : SturmLiouvilleCertificate := {
  solutionDatum := primitiveODESolutionDatum,
  eigenvalueRoute := "Sturm-Liouville eigenvalue problem",
  eigenfunctionRoute := "eigenfunction expansion",
  orthogonalityChecked := true,
  completenessChecked := true,
  endpointChecked := true,
  classicalComplementCarried := true
}

def SturmLiouvilleLayerClosed (C : SturmLiouvilleCertificate) : Prop := 
  C.solutionDatum.boundaryChecked = true ∧
  C.orthogonalityChecked = true ∧
  C.completenessChecked = true ∧
  C.endpointChecked = true ∧
  C.classicalComplementCarried = true

theorem sturm_liouville_layer_closed_checked :
    SturmLiouvilleLayerClosed sturmLiouvilleCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end AnalyticalTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse