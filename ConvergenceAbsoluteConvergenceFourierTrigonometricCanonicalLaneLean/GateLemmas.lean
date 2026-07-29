import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean

def gateFourierClosed (A : AdmissibleFourierClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_fourier_class (A : AdmissibleFourierClass) :
    gateFourierClosed A := by
  exact A.gateWitness

end ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean
end HautevilleHouse
