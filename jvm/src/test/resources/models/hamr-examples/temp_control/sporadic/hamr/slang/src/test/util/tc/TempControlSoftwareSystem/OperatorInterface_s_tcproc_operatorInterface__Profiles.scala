// #Sireum

package tc.TempControlSoftwareSystem

import org.sireum._
import tc.RandomLib

// Do not edit this file as it will be overwritten if HAMR codegen is rerun

// Profile for initialise entrypoint
@record class OperatorInterface_s_tcproc_operatorInterface_Profile (
  val name: String,
  val numTests: Z //number of tests to generate
)

// Profile with generators for incoming ports
@record class OperatorInterface_s_tcproc_operatorInterface_Profile_P(
  val name: String,
  val numTests: Z, // number of tests to generate
  var numTestVectorGenRetries: Z, // number of test vector generation retries
  var api_tempChanged: RandomLib,
  var api_currentTemp: RandomLib)

// Profile with generators for state variables and incoming ports
@record class OperatorInterface_s_tcproc_operatorInterface_Profile_PS(
  val name: String,
  val numTests: Z, // number of tests to generate
  var numTestVectorGenRetries: Z, // number of test vector generation retries
  var api_tempChanged: RandomLib,
  var api_currentTemp: RandomLib)
