import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

structure ProjectivePlanePackage where
  pointSet : Type u
  lineSet : Type v
  incidence : pointSet → lineSet → Prop
  anyTwoPointsUniqueLine : ∀ (p q : pointSet), p ≠ q → ∃! (ℓ : lineSet), incidence p ℓ ∧ incidence q ℓ
  anyTwoLinesUniquePoint : ∀ (ℓ m : lineSet), ℓ ≠ m → ∃! (p : pointSet), incidence p ℓ ∧ incidence p m
  fourPointNoThreeCollinear : ∃ (p q r s : pointSet), p ≠ q ∧ p ≠ r ∧ p ≠ s ∧ q ≠ r ∧ q ≠ s ∧ r ≠ s ∧
    ∀ (ℓ : lineSet), ¬ (incidence p ℓ ∧ incidence q ℓ ∧ incidence r ℓ) ∧ ¬ (incidence p ℓ ∧ incidence q ℓ ∧ incidence s ℓ) ∧
    ¬ (incidence p ℓ ∧ incidence r ℓ ∧ incidence s ℓ) ∧ ¬ (incidence q ℓ ∧ incidence r ℓ ∧ incidence s ℓ)

structure ProjectivePlaneEvidence (P : ProjectivePlanePackage) where
  anyTwoPointsUniqueLineClosed : P.anyTwoPointsUniqueLine
  anyTwoLinesUniquePointClosed : P.anyTwoLinesUniquePoint
  fourPointNoThreeCollinearClosed : P.fourPointNoThreeCollinear

def ProjectivePlaneClosed (P : ProjectivePlanePackage) : Prop :=
  P.anyTwoPointsUniqueLine ∧ P.anyTwoLinesUniquePoint ∧ P.fourPointNoThreeCollinear

theorem projective_plane_closed_from_evidence (P : ProjectivePlanePackage) (E : ProjectivePlaneEvidence P) :
    ProjectivePlaneClosed P := by
  exact And.intro E.anyTwoPointsUniqueLineClosed
    (And.intro E.anyTwoLinesUniquePointClosed E.fourPointNoThreeCollinearClosed)

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse