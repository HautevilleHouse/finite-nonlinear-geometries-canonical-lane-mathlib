import FiniteNonlinearGeometriesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

def ConstrainedFiniteNonlinearGeometriesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_finite_nonlinear_geometries_endgame (A : AdmissibleClass) :
    ConstrainedFiniteNonlinearGeometriesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse