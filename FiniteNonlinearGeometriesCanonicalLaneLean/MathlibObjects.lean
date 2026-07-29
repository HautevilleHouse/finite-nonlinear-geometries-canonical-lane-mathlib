import FiniteNonlinearGeometriesCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlib

structure AdmittedObject where
  space : AdmissibleClass
  conclusion : bridgeClosed space ∧ gateClosed space

structure FiniteNonlinearGeometriesEndgameState where
  object : AdmittedObject

def FiniteNonlinearGeometriesWitnessClosed (O : AdmittedObject) : Prop :=
  O.conclusion.1 ∧ O.conclusion.2

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse