import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean

structure DirichletKernel (N : ℕ) where
  N : ℕ
  kernel : ℝ → ℝ
  kernelIntegralOne : ∫ x, kernel x dx = 1
  kernelDirichletFormula : kernel x = (sin ((N+0.5)*x)) / (sin (x/2)) when sin (x/2) ≠ 0

def FejerKernel (N : ℕ) : ℝ → ℝ :=
  λ x => (1/(N+1)) * ((sin ((N+1)*x/2)) ^ 2) / ((sin (x/2)) ^ 2)

end ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean
end HautevilleHouse