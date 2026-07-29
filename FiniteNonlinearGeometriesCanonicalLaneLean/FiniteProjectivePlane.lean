import canonicalLaneMathlib.FiniteGeometryBasis

/-!
# Finite Projective Plane Package
-/

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

structure FiniteProjectivePlanePackage (q : ℕ) where
  points : ℕ
  lines : ℕ
  incidence : Prop
  order : q
  pointCountEquals : points = q^2 + q + 1
  lineCountEquals : lines = q^2 + q + 1
  dualHolds : Prop
  fanoAxiom : q ≠ 2 → Prop

structure FiniteProjectivePlaneEvidence {q : ℕ} (P : FiniteProjectivePlanePackage q) where
  incidenceClosed : P.incidence
  dualHoldsClosed : P.dualHolds
  fanoAxiomClosed : P.fanoAxiom (by intro h; exact h)

def FiniteProjectivePlaneClosed {q : ℕ} (P : FiniteProjectivePlanePackage q) : Prop :=
  P.incidence ∧ P.dualHolds ∧ P.fanoAxiom (by intro h; exact h)

theorem finite_projective_plane_closed_from_evidence
    {q : ℕ} (P : FiniteProjectivePlanePackage q) (E : FiniteProjectivePlaneEvidence P) :
    FiniteProjectivePlaneClosed P := by
  exact And.intro E.incidenceClosed (And.intro E.dualHoldsClosed E.fanoAxiomClosed)

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse