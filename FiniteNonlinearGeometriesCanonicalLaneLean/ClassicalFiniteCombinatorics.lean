import HautevilleHouse.FiniteNonlinearGeometriesCanonicalLaneLean.FiniteNonlinearAdmittedObject

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

structure ClassicalFiniteGeometryStructure where
  pointSet : Type
  lineSet : Type
  incidence : pointSet → lineSet → Prop
  finite : Fintype pointSet ∧ Fintype lineSet
  linearity : ∀ p q : pointSet, p ≠ q → ∃! l : lineSet, incidence p l ∧ incidence q l

structure ClassicalFiniteGeometryEvidence (S : ClassicalFiniteGeometryStructure) where
  finiteClosed : S.finite
  linearityClosed : S.linearity

def ClassicalFiniteGeometryClosed (S : ClassicalFiniteGeometryStructure) : Prop :=
  S.finite ∧ S.linearity

theorem classical_finite_geometry_closed_from_evidence (S : ClassicalFiniteGeometryStructure)
    (E : ClassicalFiniteGeometryEvidence S) : ClassicalFiniteGeometryClosed S := by
  exact And.intro E.finiteClosed E.linearityClosed

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse