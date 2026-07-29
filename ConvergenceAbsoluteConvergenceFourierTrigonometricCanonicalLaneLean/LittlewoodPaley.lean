import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean

structure SquareFunction (f : ℝ → ℂ) where
  dyadicIntervals : ℤ → ℝ → ℂ
  squareFunction : ℝ → ℝ
  squareFunctionDefined : squareFunction x = (∑_{k∈ℤ} |dyadicIntervals k x|^2)^{1/2}

theorem LittlewoodPaleyInequality (f : ℝ → ℂ) (p : ℝ) (hp : 1 < p) (hp' : p < ∞) :
    (∫ |squareFunction f|^p)^(1/p) ≤ C_p * (∫ |f|^p)^(1/p) := by
  sorry

end ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean
end HautevilleHouse