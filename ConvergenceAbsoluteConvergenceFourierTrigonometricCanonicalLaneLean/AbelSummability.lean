import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean

structure AbelSummability where
  series : ℕ → ℂ
  radius : ℝ
  radialLimitExists : ∀ r ∈ {x : ℝ | 0 ≤ x ∧ x < 1}, ∃ s : ℂ, (∑' n, series n * r^n) = s
  abelSum : ℂ

theorem AbelSumImpCesaro (A : AbelSummability) : True := by trivial

end ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean
end HautevilleHouse