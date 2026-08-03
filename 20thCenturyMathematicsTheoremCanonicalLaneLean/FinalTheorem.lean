import TwentiethCenturyMathematicsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace TwentiethCenturyMathematicsTheoremCanonicalLaneLean

def ConstrainedFermatClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fermat_endgame (A : AdmissibleClass) :
    ConstrainedFermatClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end TwentiethCenturyMathematicsTheoremCanonicalLaneLean
end HautevilleHouse