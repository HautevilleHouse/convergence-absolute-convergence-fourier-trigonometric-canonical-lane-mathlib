import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean.FourierConvergenceAdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean

structure DiniTestPackage where
  functionCondition : Prop
  modulusOfContinuityCondition : Prop
  diniIntegralFinite : Prop
  pointwiseConvergence : Prop

structure DiniTestEvidence (D : DiniTestPackage) where
  functionConditionClosed : D.functionCondition
  modulusOfContinuityConditionClosed : D.modulusOfContinuityCondition
  diniIntegralFiniteClosed : D.diniIntegralFinite
  pointwiseConvergenceClosed : D.pointwiseConvergence

def DiniTestClosed (D : DiniTestPackage) : Prop :=
  D.functionCondition ∧ D.modulusOfContinuityCondition ∧ D.diniIntegralFinite ∧ D.pointwiseConvergence

theorem dini_test_closed_from_evidence (D : DiniTestPackage) (E : DiniTestEvidence D) :
    DiniTestClosed D := by
  exact And.intro E.functionConditionClosed
    (And.intro E.modulusOfContinuityConditionClosed
      (And.intro E.diniIntegralFiniteClosed E.pointwiseConvergenceClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean
end HautevilleHouse
