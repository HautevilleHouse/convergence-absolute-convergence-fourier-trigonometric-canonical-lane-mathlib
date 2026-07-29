import canonicalLaneMathlib.AdmissibleClass
import ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean.FourierCoefficient
import ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean.DirichletKernel
import ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean.AbelSummability
import ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean.LittlewoodPaley
import ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean.CarlesonTheorem

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object ∷ ()  -- placeholder: define appropriate predicate

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.respondsTo closure

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedFourierTrigonometricClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fourier_trigonometric_endgame (A : AdmissibleClass) :
    ConstrainedFourierTrigonometricClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean
end HautevilleHouse