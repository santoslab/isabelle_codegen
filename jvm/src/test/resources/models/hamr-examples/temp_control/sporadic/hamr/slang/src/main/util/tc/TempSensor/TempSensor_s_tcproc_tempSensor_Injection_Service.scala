// #Sireum
package tc.TempSensor

import org.sireum._

// Do not edit this file as it will be overwritten if HAMR codegen is rerun

@msig trait TempSensor_s_tcproc_tempSensor_Injection_Provider {
  def pre_receiveInput(): Unit
}

object TempSensor_s_tcproc_tempSensor_Injection_Service {

  var providers: MSZ[TempSensor_s_tcproc_tempSensor_Injection_Provider] = MSZ()

  def register(provider: TempSensor_s_tcproc_tempSensor_Injection_Provider): Unit = {
    providers = providers :+ provider
  }

  def pre_receiveInput(): Unit = {
    for (provider <- providers) {
      provider.pre_receiveInput()
    }
  }
}