import canonicalLaneMathlib.ProjectivePlane

/-!
# Generalized Quadrangle Package
-/

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

structure GeneralizedQuadranglePackage (s t : ℕ) where
  points : ℕ
  lines : ℕ
  pointLineIncidence : Prop
  noOvoidCovers : Prop
  parameters : (s,t)
  pointCount : points = (s+1)*(s*t+1)
  lineCount : lines = (t+1)*(s*t+1)

structure GeneralizedQuadrangleEvidence {s t : ℕ} (G : GeneralizedQuadranglePackage s t) where
  incidenceClosed : G.pointLineIncidence
  noOvoidCoversClosed : G.noOvoidCovers

def GeneralizedQuadrangleClosed {s t : ℕ} (G : GeneralizedQuadranglePackage s t) : Prop :=
  G.pointLineIncidence ∧ G.noOvoidCovers

theorem generalized_quadrangle_closed_from_evidence
    {s t : ℕ} (G : GeneralizedQuadranglePackage s t) (E : GeneralizedQuadrangleEvidence G) :
    GeneralizedQuadrangleClosed G := by
  exact And.intro E.incidenceClosed E.noOvoidCoversClosed

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse