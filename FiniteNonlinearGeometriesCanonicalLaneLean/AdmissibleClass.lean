import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

structure FiniteIncidenceStructure where
  Point : Type
  Line : Type
  incidence : Point → Line → Prop
  lineThroughTwoPoints : ∀ (p q : Point), p ≠ q → ∃! l : Line, incidence p l ∧ incidence q l

def FanoClosure {I : FiniteIncidenceStructure} : Prop :=
  ∀ p q : I.Point, p ≠ q → ∃ l : I.Line, I.incidence p l ∧ I.incidence q l

theorem FanoProjectivePlaneClosed (I : FiniteIncidenceStructure) : FanoClosure I := by
  intro p q h
  rcases I.lineThroughTwoPoints p q h with ⟨l, hl, huniq⟩
  exact ⟨l, hl⟩

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse