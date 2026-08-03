import TwentiethCenturyMathematicsTheoremCanonicalLaneLean.FreyCurve

namespace HautevilleHouse
namespace TwentiethCenturyMathematicsTheoremCanonicalLaneLean

structure ModularityTheoremPackage {F : FreyCurvePackage} where
  modularFormExists : Prop
  levelMatching : Prop
  weightTwo : Prop
  newform : Prop

structure ModularityTheoremEvidence {F : FreyCurvePackage} (M : ModularityTheoremPackage F) where
  modularFormExistsClosed : M.modularFormExists
  levelMatchingClosed : M.levelMatching
  weightTwoClosed : M.weightTwo
  newformClosed : M.newform

def ModularityTheoremClosed {F : FreyCurvePackage} (M : ModularityTheoremPackage F) : Prop :=
  M.modularFormExists ∧ M.levelMatching ∧ M.weightTwo ∧ M.newform

theorem modularity_theorem_closed_from_evidence {F : FreyCurvePackage} (M : ModularityTheoremPackage F) (E : ModularityTheoremEvidence M) :
    ModularityTheoremClosed M := by
  exact And.intro E.modularFormExistsClosed (And.intro E.levelMatchingClosed (And.intro E.weightTwoClosed E.newformClosed))

end TwentiethCenturyMathematicsTheoremCanonicalLaneLean
end HautevilleHouse