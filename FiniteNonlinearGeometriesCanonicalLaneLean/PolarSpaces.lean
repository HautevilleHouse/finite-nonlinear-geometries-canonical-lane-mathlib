import Mathlib.Data.Fintype.Basic

/-!
# Finite Polar Spaces and Orthogonal Geometries
-/

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

structure FinitePolarSpace (Point : Type) [Fintype Point] where
  polarity : Point → Point → Prop
  reflexivity : Prop
  symmetry : Prop
  nonDegenerate : Prop
  rank : Nat

def PolarSpaceAxioms (P : FinitePolarSpace Point) : Prop :=
  P.reflexivity ∧ P.symmetry ∧ P.nonDegenerate

structure QuadraticForm (V : Type) [Fintype V] where
  q : V → Int
  bilinear : V → V → Int
  symmetricBilinear : Prop
  polarFormConsistent : Prop
  radical : Finset V
  rank : Nat

def NondegenerateQuadraticForm (Q : QuadraticForm V) : Prop :=
  Q.radical.card = 1

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse
