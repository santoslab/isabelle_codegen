// #Sireum

package tc.CoolingFan

import org.sireum._
import tc.RandomLib

// Do not edit this file as it will be overwritten if HAMR codegen is rerun

// Profile for initialise entrypoint
@record class Fan_s_tcproc_fan_Profile (
  val name: String,
  val numTests: Z //number of tests to generate
)

// Profile with generators for incoming ports
@record class Fan_s_tcproc_fan_Profile_P(
  val name: String,
  val numTests: Z, // number of tests to generate
  var numTestVectorGenRetries: Z, // number of test vector generation retries
  var api_fanCmd: RandomLib)

// Profile with generators for state variables and incoming ports
@record class Fan_s_tcproc_fan_Profile_PS(
  val name: String,
  val numTests: Z, // number of tests to generate
  var numTestVectorGenRetries: Z, // number of test vector generation retries
  var api_fanCmd: RandomLib)
