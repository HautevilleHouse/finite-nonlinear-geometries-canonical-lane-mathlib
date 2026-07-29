import HautevilleHouse.FiniteNonlinearGeometriesCanonicalLaneLean.OvoidsAndConics

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

def ConstrainedFiniteNonlinearEndgameClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_finite_nonlinear_endgame_closure (A : AdmissibleClass) :
    ConstrainedFiniteNonlinearEndgameClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

theorem finite_nonlinear_endgame_provides_mathlib_statement (A : AdmissibleClass) :
    FiniteNonlinearWitnessClosed A.object := by
  exact A.object.conclusion

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse