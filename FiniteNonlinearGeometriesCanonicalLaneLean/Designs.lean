import Mathlib.Data.Finset.Basic
import Mathlib.Data.Fintype.Basic

/-!
# Block Designs and Steiner Systems
-/

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

structure BlockDesign (Point : Type) [Fintype Point] where
  blocks : Finset (Finset Point)
  v : Nat
  b : Nat
  r : Nat
  k : Nat
  lambda : Nat
  regularity : Prop
  uniformity : Prop
  balance : Prop

structure SteinerSystem (Point : Type) [Fintype Point] extends BlockDesign Point where
  anyTwoPointsInUniqueBlock : Prop

def BalancedIncompleteBlockDesign (D : BlockDesign Point) : Prop :=
  D.regularity ∧ D.uniformity ∧ D.balance

structure ResolvableDesign (Point : Type) [Fintype Point] extends BlockDesign Point where
  partitionIntoParallelClasses : Prop

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse
