import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def finiteNonlinearProjection : Projection FiniteNonlinearGeometryState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem finite_nonlinear_projection_idempotent (x : FiniteNonlinearGeometryState) :
    finiteNonlinearProjection.toFun (finiteNonlinearProjection.toFun x) = finiteNonlinearProjection.toFun x := by
  exact finiteNonlinearProjection.idempotent x

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse