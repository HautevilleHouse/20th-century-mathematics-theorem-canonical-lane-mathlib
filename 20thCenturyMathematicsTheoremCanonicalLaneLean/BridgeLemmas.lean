import TwentiethCenturyMathematicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace TwentiethCenturyMathematicsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FermatWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end TwentiethCenturyMathematicsTheoremCanonicalLaneLean
end HautevilleHouse