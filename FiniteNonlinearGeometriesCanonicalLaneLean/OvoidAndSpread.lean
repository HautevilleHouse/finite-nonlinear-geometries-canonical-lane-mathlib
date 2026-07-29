import canonicalLaneMathlib.Quadrangle

/-!
# Ovoid and Spread Package
-/

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

structure OvoidAndSpreadPackage {s t : ℕ} (G : GeneralizedQuadranglePackage s t) where
  ovoid : Prop
  spread : Prop
  ovoidSize : ovoid → ℕ
  spreadSize : spread → ℕ
  ovoidMaximal : ovoid → ℕ → Prop
  spreadMaximal : spread → ℕ → Prop

structure OvoidAndSpreadEvidence {s t : ℕ} {G : GeneralizedQuadranglePackage s t} (OS : OvoidAndSpreadPackage G) where
  ovoidClosed : OS.ovoid
  spreadClosed : OS.spread

def OvoidAndSpreadClosed {s t : ℕ} {G : GeneralizedQuadranglePackage s t} (OS : OvoidAndSpreadPackage G) : Prop :=
  OS.ovoid ∧ OS.spread

theorem ovoid_and_spread_closed_from_evidence
    {s t : ℕ} {G : GeneralizedQuadranglePackage s t} (OS : OvoidAndSpreadPackage G) (E : OvoidAndSpreadEvidence OS) :
    OvoidAndSpreadClosed OS := by
  exact And.intro E.ovoidClosed E.spreadClosed

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse