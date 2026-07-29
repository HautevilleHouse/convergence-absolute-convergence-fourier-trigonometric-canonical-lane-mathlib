import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean

def bridgeFourierClosed (A : AdmissibleFourierClass) : Prop :=
  FourierWitnessClosed A.object

theorem bridge_from_admissible_fourier_class (A : AdmissibleFourierClass) :
    bridgeFourierClosed A := by
  exact A.object.conclusion

end ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean
end HautevilleHouse
