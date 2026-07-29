import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean.FourierConvergenceAdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean

structure AbsoluteConvergencePackage where
  functionSpaceCondition : Prop
  fourierCoefficientsSummable : Prop
  absoluteConvergenceHolds : Prop
  weierstrassMAssertion : Prop

structure AbsoluteConvergenceEvidence (A : AbsoluteConvergencePackage) where
  functionSpaceConditionClosed : A.functionSpaceCondition
  fourierCoefficientsSummableClosed : A.fourierCoefficientsSummable
  absoluteConvergenceHoldsClosed : A.absoluteConvergenceHolds
  weierstrassMAssertionClosed : A.weierstrassMAssertion

def AbsoluteConvergenceClosed (A : AbsoluteConvergencePackage) : Prop :=
  A.functionSpaceCondition ∧ A.fourierCoefficientsSummable ∧ A.absoluteConvergenceHolds ∧ A.weierstrassMAssertion

theorem absolute_convergence_closed_from_evidence (A : AbsoluteConvergencePackage) (E : AbsoluteConvergenceEvidence A) :
    AbsoluteConvergenceClosed A := by
  exact And.intro E.functionSpaceConditionClosed
    (And.intro E.fourierCoefficientsSummableClosed
      (And.intro E.absoluteConvergenceHoldsClosed E.weierstrassMAssertionClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean
end HautevilleHouse
