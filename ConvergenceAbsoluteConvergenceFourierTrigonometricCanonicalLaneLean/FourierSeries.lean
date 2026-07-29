import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean

structure FourierSeriesPackage where
  functionSpace : Type u
  basis : Type v
  partialSums : Type w
  convergenceInNorm : Prop
  absoluteConvergence : Prop

def FourierSeriesClosed (F : FourierSeriesPackage) : Prop :=
  F.convergenceInNorm ∧ F.absoluteConvergence

end ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean
end HautevilleHouse
