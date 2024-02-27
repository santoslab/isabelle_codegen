#include <Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_api.h>
#include <Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure.h>

static bool apis_initialized = false;
static struct isolette_Regulate_Detect_Regulator_Failure_impl_Initialization_Api initialization_api;
static struct isolette_Regulate_Detect_Regulator_Failure_impl_Operational_Api operational_api;

static void initialize_apis(STACK_FRAME_ONLY) {
  DeclNewStackFrame(caller, "Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure.c", "", "initialize_apis", 0);

  // Option_EEC6B5 = Option[isolette.Regulate.Detect_Regulator_Failure_impl_Initialization_Api]
  Option_EEC6B5_get_(SF (isolette_Regulate_Detect_Regulator_Failure_impl_Initialization_Api) &initialization_api, isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_Bridge_c_initialization_api(SF_LAST));
  // Option_E75C50 = Option[isolette.Regulate.Detect_Regulator_Failure_impl_Operational_Api]
  Option_E75C50_get_(SF (isolette_Regulate_Detect_Regulator_Failure_impl_Operational_Api) &operational_api, isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_Bridge_c_operational_api(SF_LAST));
  apis_initialized = true;
}

// Do not edit this file as it will be overwritten if HAMR codegen is rerun

void api_put_internal_failure__isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure(
  STACK_FRAME
  isolette_Isolette_Data_Model_Failure_Flag_impl value) {
  DeclNewStackFrame(caller, "Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_api.c", "", "api_put_internal_failure__isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure", 0);

  if(!apis_initialized) { initialize_apis(SF_LAST); }

  isolette_Regulate_Detect_Regulator_Failure_impl_Initialization_Api_put_internal_failure_(
    SF
    &initialization_api,
    value);
}

void api_logInfo__isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure(
  STACK_FRAME
  String str) {
  DeclNewStackFrame(caller, "Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_api.c", "", "api_logInfo__isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure", 0);

  if(!apis_initialized) { initialize_apis(SF_LAST); }

  isolette_Regulate_Detect_Regulator_Failure_impl_Initialization_Api_logInfo_(
    SF
    &initialization_api,
    str);
}

void api_logDebug__isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure(
  STACK_FRAME
  String str) {
  DeclNewStackFrame(caller, "Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_api.c", "", "api_logDebug__isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure", 0);

  if(!apis_initialized) { initialize_apis(SF_LAST); }

  isolette_Regulate_Detect_Regulator_Failure_impl_Initialization_Api_logDebug_(
    SF
    &initialization_api,
    str);
}

void api_logError__isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure(
  STACK_FRAME
  String str) {
  DeclNewStackFrame(caller, "Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_api.c", "", "api_logError__isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure", 0);

  if(!apis_initialized) { initialize_apis(SF_LAST); }

  isolette_Regulate_Detect_Regulator_Failure_impl_Initialization_Api_logError_(
    SF
    &initialization_api,
    str);
}

Unit isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_initialise(
  STACK_FRAME
  isolette_Regulate_Detect_Regulator_Failure_impl_Initialization_Api api) {
  DeclNewStackFrame(caller, "Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_api.c", "", "isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_initialise", 0);

  isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_initialise_(SF_LAST);
}

Unit isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_finalise(
  STACK_FRAME
  isolette_Regulate_Detect_Regulator_Failure_impl_Operational_Api api) {
  DeclNewStackFrame(caller, "Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_api.c", "", "isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_finalise", 0);

  isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_finalise_(SF_LAST);
}

Unit isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_timeTriggered(
  STACK_FRAME
  isolette_Regulate_Detect_Regulator_Failure_impl_Operational_Api api) {
  DeclNewStackFrame(caller, "Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_api.c", "", "isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_timeTriggered", 0);

  isolette_Regulate_Detect_Regulator_Failure_impl_thermostat_regulate_temperature_detect_regulator_failure_timeTriggered_(SF_LAST);
}