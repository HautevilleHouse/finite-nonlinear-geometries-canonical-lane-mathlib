import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteNonlinearGeometriesCanonicalLaneLean

structure OvalConfiguration where
  points : Type
  lines : Type
  ovalSet : Set points
  fivePointProperty : Prop

structure OvalConfigurationPackage where
  config : OvalConfiguration
  fivePointPropertyHolds : Prop
  tangencyUnique : Prop

structure OvalConfigurationEvidence (O : OvalConfigurationPackage) where
  fivePointPropertyClosed : O.fivePointPropertyHolds
  tangencyUniqueClosed : O.tangencyUnique

def OvalConfigurationClosed (O : OvalConfigurationPackage) : Prop :=
  O.fivePointPropertyHolds ∧ O.tangencyUnique

theorem oval_configuration_closed_from_evidence
    (O : OvalConfigurationPackage) (E : OvalConfigurationEvidence O) :
    OvalConfigurationClosed O := by
  exact And.intro E.fivePointPropertyClosed E.tangencyUniqueClosed

end FiniteNonlinearGeometriesCanonicalLaneLean
end HautevilleHouse