import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

structure GeneralizedQuadranglePackage where
  pointSet : Type u
  lineSet : Type v
  incidence : pointSet → lineSet → Prop
  noThreePointLine : ∀ (p q r : pointSet) (ℓ : lineSet), incidence p ℓ → incidence q ℓ → incidence r ℓ → p = q ∨ p = r ∨ q = r
  throughPointUniqueLine : ∀ (p : pointSet) (ℓ m : lineSet), p ∉ (λ (x : pointSet) => False) →
    (∃ (q : pointSet), q ≠ p ∧ incidence q ℓ ∧ incidence q m) → ℓ = m

structure GeneralizedQuadrangleEvidence (G : GeneralizedQuadranglePackage) where
  noThreePointLineClosed : G.noThreePointLine
  throughPointUniqueLineClosed : G.throughPointUniqueLine

def GeneralizedQuadrangleClosed (G : GeneralizedQuadranglePackage) : Prop :=
  G.noThreePointLine ∧ G.throughPointUniqueLine

theorem generalized_quadrangle_closed_from_evidence (G : GeneralizedQuadranglePackage) (E : GeneralizedQuadrangleEvidence G) :
    GeneralizedQuadrangleClosed G := by
  exact And.intro E.noThreePointLineClosed E.throughPointUniqueLineClosed

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse