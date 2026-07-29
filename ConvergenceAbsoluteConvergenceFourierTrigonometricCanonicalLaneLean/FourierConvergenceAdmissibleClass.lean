import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean

structure FourierAdmittedObject where
  functionSpace : Type u
  topology : TopologicalSpace functionSpace
  integrableCondition : Prop
  periodicCondition : Prop
  fourierSeriesConverges : Prop
  conclusion : fourierSeriesConverges

structure AdmissibleClass where
  object : FourierAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConvergenceAbsoluteConvergenceFourierTrigonometricCanonicalLaneLean
end HautevilleHouse
