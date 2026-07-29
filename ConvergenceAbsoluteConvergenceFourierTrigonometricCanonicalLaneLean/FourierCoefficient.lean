import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean

structure PrimitiveIntegrableFunction where
  carrier : Type u
  measure : carrier → ℝ
  integrable : Prop

structure FourierCoefficient where
  n : ℤ
  value : ℂ
  magnitude : ℝ
  magnitudeNonneg : magnitude ≥ 0

def FourierCoefficientAbsolute (c : FourierCoefficient) : ℝ :=
  c.magnitude

end ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean
end HautevilleHouse