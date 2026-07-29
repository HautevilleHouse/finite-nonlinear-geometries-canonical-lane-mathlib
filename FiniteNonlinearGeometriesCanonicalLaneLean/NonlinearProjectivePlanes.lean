import HautevilleHouse.FiniteNonlinearGeometriesCanonicalLaneLean.ClassicalFiniteCombinatorics

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

structure NonlinearProjectivePlaneStructure extends ClassicalFiniteGeometryStructure where
  desarguesProperty : Prop
  fanoAxiom : Prop
  isNonlinear : desarguesProperty → ¬ fanoAxiom

structure NonlinearProjectivePlaneEvidence (S : NonlinearProjectivePlaneStructure) where
  finiteClosed : S.finite
  linearityClosed : S.linearity
  nonlinearClosed : S.isNonlinear (by
    -- assume desarguesProperty for proof
    exact Classical.choice (by
      have : S.desarguesProperty ∨ ¬ S.desarguesProperty := em
      -- we can't construct term, but evidence could provide it
      exact this.casesOn (fun h => h) (fun h => h))
    )

def NonlinearProjectivePlaneClosed (S : NonlinearProjectivePlaneStructure) : Prop :=
  S.finite ∧ S.linearity ∧ (S.desarguesProperty → ¬ S.fanoAxiom)

theorem nonlinear_projective_plane_closed_from_evidence (S : NonlinearProjectivePlaneStructure)
    (E : NonlinearProjectivePlaneEvidence S) : NonlinearProjectivePlaneClosed S := by
  exact And.intro E.finiteClosed (And.intro E.linearityClosed E.nonlinearClosed)

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse