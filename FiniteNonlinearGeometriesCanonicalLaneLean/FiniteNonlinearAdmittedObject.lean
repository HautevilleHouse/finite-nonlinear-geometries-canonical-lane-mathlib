import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

structure FiniteNonlinearSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FiniteNonlinearAdmittedObject where
  space : FiniteNonlinearSpace
  finite : Prop
  nonlinear : Prop
  conclusion : finite ∧ nonlinear

structure FiniteNonlinearEndgameState where
  object : FiniteNonlinearAdmittedObject

def FiniteNonlinearWitnessClosed (O : FiniteNonlinearAdmittedObject) : Prop :=
  O.finite ∧ O.nonlinear

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse