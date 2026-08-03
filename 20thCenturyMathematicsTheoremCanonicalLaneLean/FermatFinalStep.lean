import TwentiethCenturyMathematicsTheoremCanonicalLaneLean.RibetLevelLowering

namespace HautevilleHouse
namespace TwentiethCenturyMathematicsTheoremCanonicalLaneLean

structure FermatFinalStepPackage {F : FreyCurvePackage} {M : ModularityTheoremPackage F} {R : RibetLevelLoweringPackage F M} where
  noNonTrivialSolution : Prop
  finalContradiction : Prop

structure FermatFinalStepEvidence {F : FreyCurvePackage} {M : ModularityTheoremPackage F} {R : RibetLevelLoweringPackage F M} (S : FermatFinalStepPackage F M R) where
  noNonTrivialSolutionClosed : S.noNonTrivialSolution
  finalContradictionClosed : S.finalContradiction

def FermatFinalStepClosed {F : FreyCurvePackage} {M : ModularityTheoremPackage F} {R : RibetLevelLoweringPackage F M} (S : FermatFinalStepPackage F M R) : Prop :=
  S.noNonTrivialSolution ∧ S.finalContradiction

theorem fermat_final_step_closed_from_evidence {F : FreyCurvePackage} {M : ModularityTheoremPackage F} {R : RibetLevelLoweringPackage F M} (S : FermatFinalStepPackage F M R) (E : FermatFinalStepEvidence S) :
    FermatFinalStepClosed S := by
  exact And.intro E.noNonTrivialSolutionClosed E.finalContradictionClosed

end TwentiethCenturyMathematicsTheoremCanonicalLaneLean
end HautevilleHouse