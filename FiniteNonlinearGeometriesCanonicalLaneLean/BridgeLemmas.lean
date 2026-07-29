import FiniteNonlinearGeometriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FanoClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact FanoProjectivePlaneClosed A.object

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse