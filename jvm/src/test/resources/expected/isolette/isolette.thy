theory isolette
  imports Model VarState PortState ThreadState
begin


(*===============================================================*
 *   C o m p o n e n t: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface [id = (CompId 0)] ---
 *===============================================================*)

(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_upper_desired_tempWstatus [id = (PortId 0)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_upper_desired_tempWstatus where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_upper_desired_tempWstatus =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_upper_desired_tempWstatus''
     (PortId 0)
     (CompId 0)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_upper_desired_tempWstatus_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_lower_desired_tempWstatus [id = (PortId 1)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_lower_desired_tempWstatus where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_lower_desired_tempWstatus =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_lower_desired_tempWstatus''
     (PortId 1)
     (CompId 0)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_lower_desired_tempWstatus_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_current_tempWstatus [id = (PortId 2)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_current_tempWstatus where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_current_tempWstatus =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_current_tempWstatus''
     (PortId 2)
     (CompId 0)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_current_tempWstatus_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_regulator_mode [id = (PortId 3)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_regulator_mode where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_regulator_mode =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_regulator_mode''
     (PortId 3)
     (CompId 0)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_regulator_mode_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_upper_desired_temp [id = (PortId 4)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_upper_desired_temp where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_upper_desired_temp =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_upper_desired_temp''
     (PortId 4)
     (CompId 0)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_upper_desired_temp_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_lower_desired_temp [id = (PortId 5)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_lower_desired_temp where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_lower_desired_temp =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_lower_desired_temp''
     (PortId 5)
     (CompId 0)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_lower_desired_temp_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_displayed_temp [id = (PortId 6)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_displayed_temp where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_displayed_temp =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_displayed_temp''
     (PortId 6)
     (CompId 0)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_displayed_temp_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_regulator_status [id = (PortId 7)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_regulator_status where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_regulator_status =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_regulator_status''
     (PortId 7)
     (CompId 0)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_regulator_status_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_interface_failure [id = (PortId 8)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_interface_failure where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_interface_failure =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_interface_failure''
     (PortId 8)
     (CompId 0)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_interface_failure_def [simp add]


(* -- Comp: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface [id = (CompId 0)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface =
     mkCompDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface''
     (CompId 0)
     {(PortId 0),(PortId 1),(PortId 2),(PortId 3),(PortId 4),(PortId 5),(PortId 6),(PortId 7),(PortId 8)}
     DispatchProtocol.Periodic
     {}
     {}"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_def [simp add]



(*===============================================================*
 *   C o m p o n e n t: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source [id = (CompId 1)] ---
 *===============================================================*)

(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_current_tempWstatus [id = (PortId 9)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_current_tempWstatus where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_current_tempWstatus =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_current_tempWstatus''
     (PortId 9)
     (CompId 1)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_current_tempWstatus_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_lower_desired_temp [id = (PortId 10)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_lower_desired_temp where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_lower_desired_temp =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_lower_desired_temp''
     (PortId 10)
     (CompId 1)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_lower_desired_temp_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_upper_desired_temp [id = (PortId 11)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_upper_desired_temp where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_upper_desired_temp =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_upper_desired_temp''
     (PortId 11)
     (CompId 1)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_upper_desired_temp_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_regulator_mode [id = (PortId 12)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_regulator_mode where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_regulator_mode =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_regulator_mode''
     (PortId 12)
     (CompId 1)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_regulator_mode_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_heat_control [id = (PortId 13)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_heat_control where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_heat_control =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_heat_control''
     (PortId 13)
     (CompId 1)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_heat_control_def [simp add]


(* -- Comp: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source [id = (CompId 1)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source =
     mkCompDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source''
     (CompId 1)
     {(PortId 9),(PortId 10),(PortId 11),(PortId 12),(PortId 13)}
     DispatchProtocol.Periodic
     {}
     {}"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_def [simp add]



(*===============================================================*
 *   C o m p o n e n t: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode [id = (CompId 2)] ---
 *===============================================================*)

(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_current_tempWstatus [id = (PortId 14)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_current_tempWstatus where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_current_tempWstatus =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_current_tempWstatus''
     (PortId 14)
     (CompId 2)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_current_tempWstatus_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_interface_failure [id = (PortId 15)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_interface_failure where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_interface_failure =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_interface_failure''
     (PortId 15)
     (CompId 2)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_interface_failure_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_internal_failure [id = (PortId 16)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_internal_failure where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_internal_failure =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_internal_failure''
     (PortId 16)
     (CompId 2)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_internal_failure_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_regulator_mode [id = (PortId 17)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_regulator_mode where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_regulator_mode =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_regulator_mode''
     (PortId 17)
     (CompId 2)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_regulator_mode_def [simp add]


(* -- Comp: isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode [id = (CompId 2)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode =
     mkCompDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode''
     (CompId 2)
     {(PortId 14),(PortId 15),(PortId 16),(PortId 17)}
     DispatchProtocol.Periodic
     {}
     {}"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_def [simp add]



(*===============================================================*
 *   C o m p o n e n t: isolette_single_sensor_Instance_thermostat_regulate_temperature_detect_regulator_failure [id = (CompId 3)] ---
 *===============================================================*)

(* -- Port: isolette_single_sensor_Instance_thermostat_regulate_temperature_detect_regulator_failure_internal_failure [id = (PortId 18)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_detect_regulator_failure_internal_failure where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_detect_regulator_failure_internal_failure =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_detect_regulator_failure_internal_failure''
     (PortId 18)
     (CompId 3)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_detect_regulator_failure_internal_failure_def [simp add]


(* -- Comp: isolette_single_sensor_Instance_thermostat_regulate_temperature_detect_regulator_failure [id = (CompId 3)] -- *)
definition isolette_single_sensor_Instance_thermostat_regulate_temperature_detect_regulator_failure where
  "isolette_single_sensor_Instance_thermostat_regulate_temperature_detect_regulator_failure =
     mkCompDescr
     ''isolette_single_sensor_Instance_thermostat_regulate_temperature_detect_regulator_failure''
     (CompId 3)
     {(PortId 18)}
     DispatchProtocol.Periodic
     {}
     {}"
declare isolette_single_sensor_Instance_thermostat_regulate_temperature_detect_regulator_failure_def [simp add]



(*===============================================================*
 *   C o m p o n e n t: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface [id = (CompId 4)] ---
 *===============================================================*)

(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_upper_alarm_tempWstatus [id = (PortId 19)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_upper_alarm_tempWstatus where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_upper_alarm_tempWstatus =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_upper_alarm_tempWstatus''
     (PortId 19)
     (CompId 4)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_upper_alarm_tempWstatus_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_lower_alarm_tempWstatus [id = (PortId 20)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_lower_alarm_tempWstatus where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_lower_alarm_tempWstatus =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_lower_alarm_tempWstatus''
     (PortId 20)
     (CompId 4)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_lower_alarm_tempWstatus_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_current_tempWstatus [id = (PortId 21)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_current_tempWstatus where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_current_tempWstatus =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_current_tempWstatus''
     (PortId 21)
     (CompId 4)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_current_tempWstatus_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_monitor_mode [id = (PortId 22)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_monitor_mode where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_monitor_mode =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_monitor_mode''
     (PortId 22)
     (CompId 4)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_monitor_mode_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_upper_alarm_temp [id = (PortId 23)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_upper_alarm_temp where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_upper_alarm_temp =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_upper_alarm_temp''
     (PortId 23)
     (CompId 4)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_upper_alarm_temp_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_lower_alarm_temp [id = (PortId 24)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_lower_alarm_temp where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_lower_alarm_temp =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_lower_alarm_temp''
     (PortId 24)
     (CompId 4)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_lower_alarm_temp_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_monitor_status [id = (PortId 25)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_monitor_status where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_monitor_status =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_monitor_status''
     (PortId 25)
     (CompId 4)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_monitor_status_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_interface_failure [id = (PortId 26)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_interface_failure where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_interface_failure =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_interface_failure''
     (PortId 26)
     (CompId 4)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_interface_failure_def [simp add]


(* -- Comp: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface [id = (CompId 4)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface =
     mkCompDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface''
     (CompId 4)
     {(PortId 19),(PortId 20),(PortId 21),(PortId 22),(PortId 23),(PortId 24),(PortId 25),(PortId 26)}
     DispatchProtocol.Periodic
     {}
     {}"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_def [simp add]



(*===============================================================*
 *   C o m p o n e n t: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm [id = (CompId 5)] ---
 *===============================================================*)

(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_current_tempWstatus [id = (PortId 27)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_current_tempWstatus where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_current_tempWstatus =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_current_tempWstatus''
     (PortId 27)
     (CompId 5)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_current_tempWstatus_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_lower_alarm_temp [id = (PortId 28)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_lower_alarm_temp where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_lower_alarm_temp =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_lower_alarm_temp''
     (PortId 28)
     (CompId 5)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_lower_alarm_temp_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_upper_alarm_temp [id = (PortId 29)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_upper_alarm_temp where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_upper_alarm_temp =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_upper_alarm_temp''
     (PortId 29)
     (CompId 5)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_upper_alarm_temp_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_monitor_mode [id = (PortId 30)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_monitor_mode where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_monitor_mode =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_monitor_mode''
     (PortId 30)
     (CompId 5)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_monitor_mode_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_alarm_control [id = (PortId 31)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_alarm_control where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_alarm_control =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_alarm_control''
     (PortId 31)
     (CompId 5)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_alarm_control_def [simp add]


(* -- Comp: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm [id = (CompId 5)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm =
     mkCompDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm''
     (CompId 5)
     {(PortId 27),(PortId 28),(PortId 29),(PortId 30),(PortId 31)}
     DispatchProtocol.Periodic
     {}
     {}"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_def [simp add]



(*===============================================================*
 *   C o m p o n e n t: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode [id = (CompId 6)] ---
 *===============================================================*)

(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_current_tempWstatus [id = (PortId 32)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_current_tempWstatus where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_current_tempWstatus =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_current_tempWstatus''
     (PortId 32)
     (CompId 6)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_current_tempWstatus_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_interface_failure [id = (PortId 33)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_interface_failure where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_interface_failure =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_interface_failure''
     (PortId 33)
     (CompId 6)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_interface_failure_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_internal_failure [id = (PortId 34)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_internal_failure where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_internal_failure =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_internal_failure''
     (PortId 34)
     (CompId 6)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_internal_failure_def [simp add]


(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_monitor_mode [id = (PortId 35)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_monitor_mode where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_monitor_mode =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_monitor_mode''
     (PortId 35)
     (CompId 6)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_monitor_mode_def [simp add]


(* -- Comp: isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode [id = (CompId 6)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode =
     mkCompDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode''
     (CompId 6)
     {(PortId 32),(PortId 33),(PortId 34),(PortId 35)}
     DispatchProtocol.Periodic
     {}
     {}"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_def [simp add]



(*===============================================================*
 *   C o m p o n e n t: isolette_single_sensor_Instance_thermostat_monitor_temperature_detect_monitor_failure [id = (CompId 7)] ---
 *===============================================================*)

(* -- Port: isolette_single_sensor_Instance_thermostat_monitor_temperature_detect_monitor_failure_internal_failure [id = (PortId 36)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_detect_monitor_failure_internal_failure where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_detect_monitor_failure_internal_failure =
    mkPortDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_detect_monitor_failure_internal_failure''
     (PortId 36)
     (CompId 7)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_detect_monitor_failure_internal_failure_def [simp add]


(* -- Comp: isolette_single_sensor_Instance_thermostat_monitor_temperature_detect_monitor_failure [id = (CompId 7)] -- *)
definition isolette_single_sensor_Instance_thermostat_monitor_temperature_detect_monitor_failure where
  "isolette_single_sensor_Instance_thermostat_monitor_temperature_detect_monitor_failure =
     mkCompDescr
     ''isolette_single_sensor_Instance_thermostat_monitor_temperature_detect_monitor_failure''
     (CompId 7)
     {(PortId 36)}
     DispatchProtocol.Periodic
     {}
     {}"
declare isolette_single_sensor_Instance_thermostat_monitor_temperature_detect_monitor_failure_def [simp add]



(*===============================================================*
 *   C o m p o n e n t: isolette_single_sensor_Instance_operator_interface_oip_oit [id = (CompId 8)] ---
 *===============================================================*)

(* -- Port: isolette_single_sensor_Instance_operator_interface_oip_oit_regulator_status [id = (PortId 37)] -- *)
definition isolette_single_sensor_Instance_operator_interface_oip_oit_regulator_status where
  "isolette_single_sensor_Instance_operator_interface_oip_oit_regulator_status =
    mkPortDescr
     ''isolette_single_sensor_Instance_operator_interface_oip_oit_regulator_status''
     (PortId 37)
     (CompId 8)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_operator_interface_oip_oit_regulator_status_def [simp add]


(* -- Port: isolette_single_sensor_Instance_operator_interface_oip_oit_monitor_status [id = (PortId 38)] -- *)
definition isolette_single_sensor_Instance_operator_interface_oip_oit_monitor_status where
  "isolette_single_sensor_Instance_operator_interface_oip_oit_monitor_status =
    mkPortDescr
     ''isolette_single_sensor_Instance_operator_interface_oip_oit_monitor_status''
     (PortId 38)
     (CompId 8)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_operator_interface_oip_oit_monitor_status_def [simp add]


(* -- Port: isolette_single_sensor_Instance_operator_interface_oip_oit_display_temperature [id = (PortId 39)] -- *)
definition isolette_single_sensor_Instance_operator_interface_oip_oit_display_temperature where
  "isolette_single_sensor_Instance_operator_interface_oip_oit_display_temperature =
    mkPortDescr
     ''isolette_single_sensor_Instance_operator_interface_oip_oit_display_temperature''
     (PortId 39)
     (CompId 8)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_operator_interface_oip_oit_display_temperature_def [simp add]


(* -- Port: isolette_single_sensor_Instance_operator_interface_oip_oit_alarm_control [id = (PortId 40)] -- *)
definition isolette_single_sensor_Instance_operator_interface_oip_oit_alarm_control where
  "isolette_single_sensor_Instance_operator_interface_oip_oit_alarm_control =
    mkPortDescr
     ''isolette_single_sensor_Instance_operator_interface_oip_oit_alarm_control''
     (PortId 40)
     (CompId 8)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_operator_interface_oip_oit_alarm_control_def [simp add]


(* -- Port: isolette_single_sensor_Instance_operator_interface_oip_oit_lower_desired_tempWstatus [id = (PortId 41)] -- *)
definition isolette_single_sensor_Instance_operator_interface_oip_oit_lower_desired_tempWstatus where
  "isolette_single_sensor_Instance_operator_interface_oip_oit_lower_desired_tempWstatus =
    mkPortDescr
     ''isolette_single_sensor_Instance_operator_interface_oip_oit_lower_desired_tempWstatus''
     (PortId 41)
     (CompId 8)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_operator_interface_oip_oit_lower_desired_tempWstatus_def [simp add]


(* -- Port: isolette_single_sensor_Instance_operator_interface_oip_oit_upper_desired_tempWstatus [id = (PortId 42)] -- *)
definition isolette_single_sensor_Instance_operator_interface_oip_oit_upper_desired_tempWstatus where
  "isolette_single_sensor_Instance_operator_interface_oip_oit_upper_desired_tempWstatus =
    mkPortDescr
     ''isolette_single_sensor_Instance_operator_interface_oip_oit_upper_desired_tempWstatus''
     (PortId 42)
     (CompId 8)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_operator_interface_oip_oit_upper_desired_tempWstatus_def [simp add]


(* -- Port: isolette_single_sensor_Instance_operator_interface_oip_oit_lower_alarm_tempWstatus [id = (PortId 43)] -- *)
definition isolette_single_sensor_Instance_operator_interface_oip_oit_lower_alarm_tempWstatus where
  "isolette_single_sensor_Instance_operator_interface_oip_oit_lower_alarm_tempWstatus =
    mkPortDescr
     ''isolette_single_sensor_Instance_operator_interface_oip_oit_lower_alarm_tempWstatus''
     (PortId 43)
     (CompId 8)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_operator_interface_oip_oit_lower_alarm_tempWstatus_def [simp add]


(* -- Port: isolette_single_sensor_Instance_operator_interface_oip_oit_upper_alarm_tempWstatus [id = (PortId 44)] -- *)
definition isolette_single_sensor_Instance_operator_interface_oip_oit_upper_alarm_tempWstatus where
  "isolette_single_sensor_Instance_operator_interface_oip_oit_upper_alarm_tempWstatus =
    mkPortDescr
     ''isolette_single_sensor_Instance_operator_interface_oip_oit_upper_alarm_tempWstatus''
     (PortId 44)
     (CompId 8)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_operator_interface_oip_oit_upper_alarm_tempWstatus_def [simp add]


(* -- Comp: isolette_single_sensor_Instance_operator_interface_oip_oit [id = (CompId 8)] -- *)
definition isolette_single_sensor_Instance_operator_interface_oip_oit where
  "isolette_single_sensor_Instance_operator_interface_oip_oit =
     mkCompDescr
     ''isolette_single_sensor_Instance_operator_interface_oip_oit''
     (CompId 8)
     {(PortId 37),(PortId 38),(PortId 39),(PortId 40),(PortId 41),(PortId 42),(PortId 43),(PortId 44)}
     DispatchProtocol.Periodic
     {}
     {}"
declare isolette_single_sensor_Instance_operator_interface_oip_oit_def [simp add]



(*===============================================================*
 *   C o m p o n e n t: isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat [id = (CompId 9)] ---
 *===============================================================*)

(* -- Port: isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat_air [id = (PortId 45)] -- *)
definition isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat_air where
  "isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat_air =
    mkPortDescr
     ''isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat_air''
     (PortId 45)
     (CompId 9)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat_air_def [simp add]


(* -- Port: isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat_current_tempWstatus [id = (PortId 46)] -- *)
definition isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat_current_tempWstatus where
  "isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat_current_tempWstatus =
    mkPortDescr
     ''isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat_current_tempWstatus''
     (PortId 46)
     (CompId 9)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat_current_tempWstatus_def [simp add]


(* -- Comp: isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat [id = (CompId 9)] -- *)
definition isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat where
  "isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat =
     mkCompDescr
     ''isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat''
     (CompId 9)
     {(PortId 45),(PortId 46)}
     DispatchProtocol.Periodic
     {}
     {}"
declare isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat_def [simp add]



(*===============================================================*
 *   C o m p o n e n t: isolette_single_sensor_Instance_heat_source_cpi_heat_controller [id = (CompId 10)] ---
 *===============================================================*)

(* -- Port: isolette_single_sensor_Instance_heat_source_cpi_heat_controller_heat_control [id = (PortId 47)] -- *)
definition isolette_single_sensor_Instance_heat_source_cpi_heat_controller_heat_control where
  "isolette_single_sensor_Instance_heat_source_cpi_heat_controller_heat_control =
    mkPortDescr
     ''isolette_single_sensor_Instance_heat_source_cpi_heat_controller_heat_control''
     (PortId 47)
     (CompId 10)
     In
     Data
     1
     0"
declare isolette_single_sensor_Instance_heat_source_cpi_heat_controller_heat_control_def [simp add]


(* -- Port: isolette_single_sensor_Instance_heat_source_cpi_heat_controller_heat_out [id = (PortId 48)] -- *)
definition isolette_single_sensor_Instance_heat_source_cpi_heat_controller_heat_out where
  "isolette_single_sensor_Instance_heat_source_cpi_heat_controller_heat_out =
    mkPortDescr
     ''isolette_single_sensor_Instance_heat_source_cpi_heat_controller_heat_out''
     (PortId 48)
     (CompId 10)
     Out
     Data
     1
     0"
declare isolette_single_sensor_Instance_heat_source_cpi_heat_controller_heat_out_def [simp add]


(* -- Comp: isolette_single_sensor_Instance_heat_source_cpi_heat_controller [id = (CompId 10)] -- *)
definition isolette_single_sensor_Instance_heat_source_cpi_heat_controller where
  "isolette_single_sensor_Instance_heat_source_cpi_heat_controller =
     mkCompDescr
     ''isolette_single_sensor_Instance_heat_source_cpi_heat_controller''
     (CompId 10)
     {(PortId 47),(PortId 48)}
     DispatchProtocol.Periodic
     {}
     {}"
declare isolette_single_sensor_Instance_heat_source_cpi_heat_controller_def [simp add]




(*===============================================================*
 *   S Y S T E M   C O N N E C T I O N S
 *===============================================================*)

definition sysConns
  where "sysConns = map_of [
    ((PortId 4), {(PortId 11)}),
    ((PortId 5), {(PortId 10)}),
    ((PortId 8), {(PortId 15)}),
    ((PortId 17), {(PortId 3),(PortId 12)}),
    ((PortId 18), {(PortId 16)}),
    ((PortId 23), {(PortId 29)}),
    ((PortId 24), {(PortId 28)}),
    ((PortId 26), {(PortId 33)}),
    ((PortId 35), {(PortId 22),(PortId 30)}),
    ((PortId 36), {(PortId 34)}),
    ((PortId 6), {(PortId 39)}),
    ((PortId 7), {(PortId 37)}),
    ((PortId 13), {(PortId 47)}),
    ((PortId 25), {(PortId 38)}),
    ((PortId 31), {(PortId 40)}),
    ((PortId 41), {(PortId 1)}),
    ((PortId 42), {(PortId 0)}),
    ((PortId 43), {(PortId 20)}),
    ((PortId 44), {(PortId 19)}),
    ((PortId 46), {(PortId 21),(PortId 27),(PortId 32),(PortId 2),(PortId 9),(PortId 14)})
  ]"
declare sysConns_def [simp add]



(*===============================================================*
*   P O R T   D E S C R I P T O R S
*===============================================================*)

definition sysPortDescrs
  where "sysPortDescrs = map_of [
    ((PortId 0), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_upper_desired_tempWstatus),
    ((PortId 1), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_lower_desired_tempWstatus),
    ((PortId 2), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_current_tempWstatus),
    ((PortId 3), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_regulator_mode),
    ((PortId 4), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_upper_desired_temp),
    ((PortId 5), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_lower_desired_temp),
    ((PortId 6), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_displayed_temp),
    ((PortId 7), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_regulator_status),
    ((PortId 8), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface_interface_failure),
    ((PortId 9), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_current_tempWstatus),
    ((PortId 10), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_lower_desired_temp),
    ((PortId 11), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_upper_desired_temp),
    ((PortId 12), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_regulator_mode),
    ((PortId 13), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source_heat_control),
    ((PortId 14), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_current_tempWstatus),
    ((PortId 15), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_interface_failure),
    ((PortId 16), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_internal_failure),
    ((PortId 17), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode_regulator_mode),
    ((PortId 18), isolette_single_sensor_Instance_thermostat_regulate_temperature_detect_regulator_failure_internal_failure),
    ((PortId 19), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_upper_alarm_tempWstatus),
    ((PortId 20), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_lower_alarm_tempWstatus),
    ((PortId 21), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_current_tempWstatus),
    ((PortId 22), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_monitor_mode),
    ((PortId 23), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_upper_alarm_temp),
    ((PortId 24), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_lower_alarm_temp),
    ((PortId 25), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_monitor_status),
    ((PortId 26), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface_interface_failure),
    ((PortId 27), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_current_tempWstatus),
    ((PortId 28), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_lower_alarm_temp),
    ((PortId 29), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_upper_alarm_temp),
    ((PortId 30), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_monitor_mode),
    ((PortId 31), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm_alarm_control),
    ((PortId 32), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_current_tempWstatus),
    ((PortId 33), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_interface_failure),
    ((PortId 34), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_internal_failure),
    ((PortId 35), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode_monitor_mode),
    ((PortId 36), isolette_single_sensor_Instance_thermostat_monitor_temperature_detect_monitor_failure_internal_failure),
    ((PortId 37), isolette_single_sensor_Instance_operator_interface_oip_oit_regulator_status),
    ((PortId 38), isolette_single_sensor_Instance_operator_interface_oip_oit_monitor_status),
    ((PortId 39), isolette_single_sensor_Instance_operator_interface_oip_oit_display_temperature),
    ((PortId 40), isolette_single_sensor_Instance_operator_interface_oip_oit_alarm_control),
    ((PortId 41), isolette_single_sensor_Instance_operator_interface_oip_oit_lower_desired_tempWstatus),
    ((PortId 42), isolette_single_sensor_Instance_operator_interface_oip_oit_upper_desired_tempWstatus),
    ((PortId 43), isolette_single_sensor_Instance_operator_interface_oip_oit_lower_alarm_tempWstatus),
    ((PortId 44), isolette_single_sensor_Instance_operator_interface_oip_oit_upper_alarm_tempWstatus),
    ((PortId 45), isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat_air),
    ((PortId 46), isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat_current_tempWstatus),
    ((PortId 47), isolette_single_sensor_Instance_heat_source_cpi_heat_controller_heat_control),
    ((PortId 48), isolette_single_sensor_Instance_heat_source_cpi_heat_controller_heat_out)
  ]"
declare sysPortDescrs_def [simp add]



(*===============================================================*
*   C O M P O N E N T   D E S C R I P T O R S
*===============================================================*)

definition sysCompDescrs
  where "sysCompDescrs = map_of [
    ((CompId 0), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_interface),
    ((CompId 1), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_heat_source),
    ((CompId 2), isolette_single_sensor_Instance_thermostat_regulate_temperature_manage_regulator_mode),
    ((CompId 3), isolette_single_sensor_Instance_thermostat_regulate_temperature_detect_regulator_failure),
    ((CompId 4), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_interface),
    ((CompId 5), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_alarm),
    ((CompId 6), isolette_single_sensor_Instance_thermostat_monitor_temperature_manage_monitor_mode),
    ((CompId 7), isolette_single_sensor_Instance_thermostat_monitor_temperature_detect_monitor_failure),
    ((CompId 8), isolette_single_sensor_Instance_operator_interface_oip_oit),
    ((CompId 9), isolette_single_sensor_Instance_temperature_sensor_cpi_thermostat),
    ((CompId 10), isolette_single_sensor_Instance_heat_source_cpi_heat_controller)
  ]"
declare sysCompDescrs_def [simp add]



(*===============================================================*
*   T O P - L E V E L  S Y S T E M   M O D E L
*===============================================================*)

definition sysModel
  where "sysModel = mkModel sysCompDescrs sysPortDescrs sysConns"
declare sysModel_def [simp add]



lemma sysModel_wf_Model_PortDescr: "wf_Model_PortDescr sysModel"
  by (simp add: wf_Model_PortDescr_def wf_PortDescr_def)

lemma sysModel_wf_Model_PortDescrsIds:  "wf_Model_PortDescrsIds sysModel"
  by (simp add: wf_Model_PortDescrsIds_def)

lemma sysModel_wf_Model_CompDescrsIds:  "wf_Model_CompDescrsIds sysModel"
  by (simp add: wf_Model_CompDescrsIds_def)

lemma sysModel_wf_Model_PortDescrsCompId: "wf_Model_PortDescrsCompId sysModel"
  by (simp add: wf_Model_PortDescrsCompId_def)

lemma sysModel_wf_Model_CompDescrsContainedPortIds: "wf_Model_CompDescrsContainedPortIds sysModel"
  by (simp add: wf_Model_CompDescrsContainedPortIds_def)

lemma sysModel_wf_Model_ConnsPortIds: "wf_Model_ConnsPortIds sysModel"
  by (simp add: wf_Model_ConnsPortIds_def)

lemma sysModel_wf_Model_DisjointPortIds: "wf_Model_DisjointPortIds sysModel"
  by (simp add: wf_Model_DisjointPortIds_def)

lemma sysModel_wf_Model_ConnsPortCategories: "wf_Model_ConnsPortCategories sysModel"
  by (simp add: wf_Model_ConnsPortCategories_def)

lemma sysModel_wf_Model_InDataPorts: "wf_Model_InDataPorts sysModel"
  by (simp add: wf_Model_InDataPorts_def)

lemma sysModel_wf_Model_SporadicComp: "wf_Model_SporadicComp sysModel"
  by (simp add: wf_Model_SporadicComp_def)


end