import TwentiethCenturyMathematicsTheoremCanonicalLaneLean.ModularityTheorem

namespace HautevilleHouse
namespace TwentiethCenturyMathematicsTheoremCanonicalLaneLean

structure RibetLevelLoweringPackage {F : FreyCurvePackage} {M : ModularityTheoremPackage F} where
  levelLowered : Prop
  conductorReduced : Prop
  newformWeightTwo : Prop
  contradictionReached : Prop

structure RibetLevelLoweringEvidence {F : FreyCurvePackage} {M : ModularityTheoremPackage F} (R : RibetLevelLoweringPackage F M) where
  levelLoweredClosed : R.levelLowered
  conductorReducedClosed : R.conductorReduced
  newformWeightTwoClosed : R.newformWeightTwo
  contradictionReachedClosed : R.contradictionReached

def RibetLevelLoweringClosed {F : FreyCurvePackage} {M : ModularityTheoremPackage F} (R : RibetLevelLoweringPackage F M) : Prop :=
  R.levelLowered ∧ R.conductorReduced ∧ R.newformWeightTwo ∧ R.contradictionReached

theorem ribet_level_lowering_closed_from_evidence {F : FreyCurvePackage} {M : ModularityTheoremPackage F} (R : RibetLevelLoweringPackage F M) (E : RibetLevelLoweringEvidence R) :
    RibetLevelLoweringClosed R := by
  exact And.intro E.levelLoweredClosed (And.intro E.conductorReducedClosed (And.intro E.newformWeightTwoClosed E.contradictionReachedClosed))

end TwentiethCenturyMathematicsTheoremCanonicalLaneLean
end HautevilleHouse