import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwentiethCenturyMathematicsTheoremCanonicalLaneLean

structure FermatAdmittedObject where
  a : ℕ
  b : ℕ
  c : ℕ
  n : ℕ
  hn : n > 2
  conclusion : a ^ n + b ^ n ≠ c ^ n

structure AdmissibleClass where
  object : FermatAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FermatWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end TwentiethCenturyMathematicsTheoremCanonicalLaneLean
end HautevilleHouse