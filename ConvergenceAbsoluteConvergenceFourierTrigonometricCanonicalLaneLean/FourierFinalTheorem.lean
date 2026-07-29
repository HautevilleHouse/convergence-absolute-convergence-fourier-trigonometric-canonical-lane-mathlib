import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean.FourierBridgeLemmas
import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean.FourierGateLemmas

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean

def ConstrainedFourierClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fourier_endgame (A : AdmissibleClass) :
    ConstrainedFourierClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean
end HautevilleHouse
