import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean

structure ConvergenceTestPackage where
  series : Type u
  term : series → series → Type v
  convergenceCriterion : Prop
  absoluteConvergenceCriterion : Prop
  conditionalConvergenceExample : Prop

def ConvergenceTestClosed (C : ConvergenceTestPackage) : Prop :=
  C.convergenceCriterion ∧ C.absoluteConvergenceCriterion ∧ C.conditionalConvergenceExample

end ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean
end HautevilleHouse
