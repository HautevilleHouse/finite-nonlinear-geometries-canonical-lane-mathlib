import HautevilleHouse.FiniteNonlinearGeometriesCanonicalLaneLean.NonlinearProjectivePlanes

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

structure OvoidStructure where
  ambientPlane : NonlinearProjectivePlaneStructure
  ovoidSet : Set (Subtype (ambientPlane.pointSet))
  threePointLineCondition : ∀ p q r ∈ ovoidSet, p ≠ q → q ≠ r → p ≠ r → ¬ ∃ l, ambientPlane.incidence p l ∧ ambientPlane.incidence q l ∧ ambientPlane.incidence r l

structure OvoidEvidence (O : OvoidStructure) where
  threePointLineConditionClosed : O.threePointLineCondition

def OvoidClosed (O : OvoidStructure) : Prop :=
  O.threePointLineCondition

theorem ovoid_closed_from_evidence (O : OvoidStructure) (E : OvoidEvidence O) : OvoidClosed O := by
  exact E.threePointLineConditionClosed

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse