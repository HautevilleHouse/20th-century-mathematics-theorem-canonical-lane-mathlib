import TwentiethCenturyMathematicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace TwentiethCenturyMathematicsTheoremCanonicalLaneLean

structure FreyCurvePackage where
  a : ℕ
  b : ℕ
  c : ℕ
  p : ℕ
  hp : p > 2
  curveEquation : Prop
  discriminant : Prop
  conductor : Prop
  semiStable : Prop

structure FreyCurveEvidence (F : FreyCurvePackage) where
  curveEquationClosed : F.curveEquation
  discriminantClosed : F.discriminant
  conductorClosed : F.conductor
  semiStableClosed : F.semiStable

def FreyCurveClosed (F : FreyCurvePackage) : Prop :=
  F.curveEquation ∧ F.discriminant ∧ F.conductor ∧ F.semiStable

theorem frey_curve_closed_from_evidence (F : FreyCurvePackage) (E : FreyCurveEvidence F) :
    FreyCurveClosed F := by
  exact And.intro E.curveEquationClosed (And.intro E.discriminantClosed (And.intro E.conductorClosed E.semiStableClosed))

end TwentiethCenturyMathematicsTheoremCanonicalLaneLean
end HautevilleHouse