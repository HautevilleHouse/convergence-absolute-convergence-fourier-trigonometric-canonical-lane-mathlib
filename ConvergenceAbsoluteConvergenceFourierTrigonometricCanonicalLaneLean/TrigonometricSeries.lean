import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean.FourierSeries

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean

structure TrigonometricSeriesPackage {F : FourierSeriesPackage} (T : TrigonometricConvergencePackage F) where
  coefficientDecay : Prop
  uniformConvergence : Prop
  absoluteConvergenceCondition : Prop

def TrigonometricSeriesClosed {F : FourierSeriesPackage} (T : TrigonometricConvergencePackage F) : Prop :=
  T.coefficientDecay ∧ T.uniformConvergence ∧ T.absoluteConvergenceCondition

end ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean
end HautevilleHouse
