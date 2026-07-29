import canonicalLaneMathlib.IncidenceStructure

/-!
# Partial Linear Space Package
-/

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

structure PartialLinearSpacePackage where
  points : ℕ
  lines : ℕ
  incidence : Prop
  twoPointsOnLine : Prop
  twoLinesMeet : Prop
  constantLineSize : ℕ

structure PartialLinearSpaceEvidence (P : PartialLinearSpacePackage) where
  incidenceClosed : P.incidence
  twoPointsOnLineClosed : P.twoPointsOnLine
  twoLinesMeetClosed : P.twoLinesMeet

def PartialLinearSpaceClosed (P : PartialLinearSpacePackage) : Prop :=
  P.incidence ∧ P.twoPointsOnLine ∧ P.twoLinesMeet

theorem partial_linear_space_closed_from_evidence
    (P : PartialLinearSpacePackage) (E : PartialLinearSpaceEvidence P) :
    PartialLinearSpaceClosed P := by
  exact And.intro E.incidenceClosed (And.intro E.twoPointsOnLineClosed E.twoLinesMeetClosed)

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse