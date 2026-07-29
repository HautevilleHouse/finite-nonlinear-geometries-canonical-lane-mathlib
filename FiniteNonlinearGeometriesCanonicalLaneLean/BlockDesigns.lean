import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

structure BlockDesignPackage where
  pointSet : Type u
  blockSet : Type v
  incidence : pointSet → blockSet → Prop
  regularity : ∀ (p : pointSet), ∃ (r : ℕ), ∀ (B : blockSet), incidence p B → (Finset.filter (λ (q : pointSet) => incidence q B) (Finset.univ : Finset pointSet)).card = r

structure BlockDesignEvidence (D : BlockDesignPackage) where
  regularityClosed : D.regularity

def BlockDesignClosed (D : BlockDesignPackage) : Prop :=
  D.regularity

theorem block_design_closed_from_evidence (D : BlockDesignPackage) (E : BlockDesignEvidence D) :
    BlockDesignClosed D := by
  exact E.regularityClosed

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse