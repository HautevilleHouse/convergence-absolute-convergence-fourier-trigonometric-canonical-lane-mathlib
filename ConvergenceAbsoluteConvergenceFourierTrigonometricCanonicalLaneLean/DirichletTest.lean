import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean.ConvergenceTests

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean

structure DirichletTestEvidence {C : ConvergenceTestPackage} (D : DirichletConvergencePackage C) where
  monotonicSequenceClosed : D.monotonicSequence
  boundedPartialSumsClosed : D.boundedPartialSums

def DirichletTestClosed {C : ConvergenceTestPackage} (D : DirichletConvergencePackage C) : Prop :=
  D.monotonicSequence ∧ D.boundedPartialSums

theorem dirichlet_test_closed_from_evidence {C : ConvergenceTestPackage} (D : DirichletConvergencePackage C) (E : DirichletTestEvidence D) : DirichletTestClosed D := by
  exact And.intro E.monotonicSequenceClosed E.boundedPartialSumsClosed

end ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean
end HautevilleHouse
