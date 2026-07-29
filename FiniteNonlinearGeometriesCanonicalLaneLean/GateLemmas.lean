import FiniteNonlinearGeometriesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse