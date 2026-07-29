import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

structure PartialLinearSpace where
  Point : Type
  Line : Type
  incidence : Point → Line → Prop
  axioms : Prop

structure PartialLinearSpacePackage where
  space : PartialLinearSpace
  lineIntersectionUnique : Prop
  pointLineIncidence : Prop

structure PartialLinearSpaceEvidence (P : PartialLinearSpacePackage) where
  lineIntersectionUniqueClosed : P.lineIntersectionUnique
  pointLineIncidenceClosed : P.pointLineIncidence

def PartialLinearSpaceClosed (P : PartialLinearSpacePackage) : Prop :=
  P.lineIntersectionUnique ∧ P.pointLineIncidence

theorem partial_linear_space_closed_from_evidence
    (P : PartialLinearSpacePackage) (E : PartialLinearSpaceEvidence P) :
    PartialLinearSpaceClosed P := by
  exact And.intro E.lineIntersectionUniqueClosed E.pointLineIncidenceClosed

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse