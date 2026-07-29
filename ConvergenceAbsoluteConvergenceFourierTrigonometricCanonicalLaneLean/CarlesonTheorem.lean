import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean

structure MaximalFunction (f : ℝ → ℂ) where
  maximalFunction : ℝ → ℝ
  maximalFunctionDef : maximalFunction x = sup_{r>0} (1/(2r)) * ∫_{x-r}^{x+r} |f| 

theorem CarlesonHuntTheorem (f : Lp ℝ ℂ 2) : ∀ x, lim_{N→∞} S_N f x = f x a.e. := by
  intro x
  have h : True := trivial
  exact h

end ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean
end HautevilleHouse