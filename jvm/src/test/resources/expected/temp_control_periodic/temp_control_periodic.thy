theory temp_control_periodic
  imports Model VarState PortState ThreadState
begin


(*===============================================================*
 *   C o m p o n e n t: TempControlSoftwareSystem_p_Instance_tcproc_tempSensor [id = (CompId 0)] ---
 *===============================================================*)

(* -- Port: TempControlSoftwareSystem_p_Instance_tcproc_tempSensor_currentTemp [id = (PortId 0)] -- *)
definition TempControlSoftwareSystem_p_Instance_tcproc_tempSensor_currentTemp where
  "TempControlSoftwareSystem_p_Instance_tcproc_tempSensor_currentTemp =
    mkPortDescr
     ''TempControlSoftwareSystem_p_Instance_tcproc_tempSensor_currentTemp''
     (PortId 0)
     (CompId 0)
     Out
     Data
     1
     0"
declare TempControlSoftwareSystem_p_Instance_tcproc_tempSensor_currentTemp_def [simp add]


(* -- Comp: TempControlSoftwareSystem_p_Instance_tcproc_tempSensor [id = (CompId 0)] -- *)
definition TempControlSoftwareSystem_p_Instance_tcproc_tempSensor where
  "TempControlSoftwareSystem_p_Instance_tcproc_tempSensor =
     mkCompDescr
     ''TempControlSoftwareSystem_p_Instance_tcproc_tempSensor''
     (CompId 0)
     {(PortId 0)}
     DispatchProtocol.Periodic
     {}
     {}"
declare TempControlSoftwareSystem_p_Instance_tcproc_tempSensor_def [simp add]



(*===============================================================*
 *   C o m p o n e n t: TempControlSoftwareSystem_p_Instance_tcproc_fan [id = (CompId 1)] ---
 *===============================================================*)

(* -- Port: TempControlSoftwareSystem_p_Instance_tcproc_fan_fanCmd [id = (PortId 1)] -- *)
definition TempControlSoftwareSystem_p_Instance_tcproc_fan_fanCmd where
  "TempControlSoftwareSystem_p_Instance_tcproc_fan_fanCmd =
    mkPortDescr
     ''TempControlSoftwareSystem_p_Instance_tcproc_fan_fanCmd''
     (PortId 1)
     (CompId 1)
     In
     Data
     1
     0"
declare TempControlSoftwareSystem_p_Instance_tcproc_fan_fanCmd_def [simp add]


(* -- Port: TempControlSoftwareSystem_p_Instance_tcproc_fan_fanAck [id = (PortId 2)] -- *)
definition TempControlSoftwareSystem_p_Instance_tcproc_fan_fanAck where
  "TempControlSoftwareSystem_p_Instance_tcproc_fan_fanAck =
    mkPortDescr
     ''TempControlSoftwareSystem_p_Instance_tcproc_fan_fanAck''
     (PortId 2)
     (CompId 1)
     Out
     Data
     1
     0"
declare TempControlSoftwareSystem_p_Instance_tcproc_fan_fanAck_def [simp add]


(* -- Comp: TempControlSoftwareSystem_p_Instance_tcproc_fan [id = (CompId 1)] -- *)
definition TempControlSoftwareSystem_p_Instance_tcproc_fan where
  "TempControlSoftwareSystem_p_Instance_tcproc_fan =
     mkCompDescr
     ''TempControlSoftwareSystem_p_Instance_tcproc_fan''
     (CompId 1)
     {(PortId 1),(PortId 2)}
     DispatchProtocol.Periodic
     {}
     {}"
declare TempControlSoftwareSystem_p_Instance_tcproc_fan_def [simp add]



(*===============================================================*
 *   C o m p o n e n t: TempControlSoftwareSystem_p_Instance_tcproc_tempControl [id = (CompId 2)] ---
 *===============================================================*)

(* -- Port: TempControlSoftwareSystem_p_Instance_tcproc_tempControl_currentTemp [id = (PortId 3)] -- *)
definition TempControlSoftwareSystem_p_Instance_tcproc_tempControl_currentTemp where
  "TempControlSoftwareSystem_p_Instance_tcproc_tempControl_currentTemp =
    mkPortDescr
     ''TempControlSoftwareSystem_p_Instance_tcproc_tempControl_currentTemp''
     (PortId 3)
     (CompId 2)
     In
     Data
     1
     0"
declare TempControlSoftwareSystem_p_Instance_tcproc_tempControl_currentTemp_def [simp add]


(* -- Port: TempControlSoftwareSystem_p_Instance_tcproc_tempControl_fanAck [id = (PortId 4)] -- *)
definition TempControlSoftwareSystem_p_Instance_tcproc_tempControl_fanAck where
  "TempControlSoftwareSystem_p_Instance_tcproc_tempControl_fanAck =
    mkPortDescr
     ''TempControlSoftwareSystem_p_Instance_tcproc_tempControl_fanAck''
     (PortId 4)
     (CompId 2)
     In
     Data
     1
     0"
declare TempControlSoftwareSystem_p_Instance_tcproc_tempControl_fanAck_def [simp add]


(* -- Port: TempControlSoftwareSystem_p_Instance_tcproc_tempControl_setPoint [id = (PortId 5)] -- *)
definition TempControlSoftwareSystem_p_Instance_tcproc_tempControl_setPoint where
  "TempControlSoftwareSystem_p_Instance_tcproc_tempControl_setPoint =
    mkPortDescr
     ''TempControlSoftwareSystem_p_Instance_tcproc_tempControl_setPoint''
     (PortId 5)
     (CompId 2)
     In
     Data
     1
     0"
declare TempControlSoftwareSystem_p_Instance_tcproc_tempControl_setPoint_def [simp add]


(* -- Port: TempControlSoftwareSystem_p_Instance_tcproc_tempControl_fanCmd [id = (PortId 6)] -- *)
definition TempControlSoftwareSystem_p_Instance_tcproc_tempControl_fanCmd where
  "TempControlSoftwareSystem_p_Instance_tcproc_tempControl_fanCmd =
    mkPortDescr
     ''TempControlSoftwareSystem_p_Instance_tcproc_tempControl_fanCmd''
     (PortId 6)
     (CompId 2)
     Out
     Data
     1
     0"
declare TempControlSoftwareSystem_p_Instance_tcproc_tempControl_fanCmd_def [simp add]


(* -- Comp: TempControlSoftwareSystem_p_Instance_tcproc_tempControl [id = (CompId 2)] -- *)
definition TempControlSoftwareSystem_p_Instance_tcproc_tempControl where
  "TempControlSoftwareSystem_p_Instance_tcproc_tempControl =
     mkCompDescr
     ''TempControlSoftwareSystem_p_Instance_tcproc_tempControl''
     (CompId 2)
     {(PortId 3),(PortId 4),(PortId 5),(PortId 6)}
     DispatchProtocol.Periodic
     {}
     {}"
declare TempControlSoftwareSystem_p_Instance_tcproc_tempControl_def [simp add]



(*===============================================================*
 *   C o m p o n e n t: TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface [id = (CompId 3)] ---
 *===============================================================*)

(* -- Port: TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface_currentTemp [id = (PortId 7)] -- *)
definition TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface_currentTemp where
  "TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface_currentTemp =
    mkPortDescr
     ''TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface_currentTemp''
     (PortId 7)
     (CompId 3)
     In
     Data
     1
     0"
declare TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface_currentTemp_def [simp add]


(* -- Port: TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface_setPoint [id = (PortId 8)] -- *)
definition TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface_setPoint where
  "TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface_setPoint =
    mkPortDescr
     ''TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface_setPoint''
     (PortId 8)
     (CompId 3)
     Out
     Data
     1
     0"
declare TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface_setPoint_def [simp add]


(* -- Comp: TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface [id = (CompId 3)] -- *)
definition TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface where
  "TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface =
     mkCompDescr
     ''TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface''
     (CompId 3)
     {(PortId 7),(PortId 8)}
     DispatchProtocol.Periodic
     {}
     {}"
declare TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface_def [simp add]




(*===============================================================*
 *   S Y S T E M   C O N N E C T I O N S
 *===============================================================*)

definition sysConns
  where "sysConns = map_of [
    ((PortId 0), {(PortId 3),(PortId 7)}),
    ((PortId 2), {(PortId 4)}),
    ((PortId 6), {(PortId 1)}),
    ((PortId 8), {(PortId 5)})
  ]"
declare sysConns_def [simp add]



(*===============================================================*
*   P O R T   D E S C R I P T O R S
*===============================================================*)

definition sysPortDescrs
  where "sysPortDescrs = map_of [
    ((PortId 0), TempControlSoftwareSystem_p_Instance_tcproc_tempSensor_currentTemp),
    ((PortId 1), TempControlSoftwareSystem_p_Instance_tcproc_fan_fanCmd),
    ((PortId 2), TempControlSoftwareSystem_p_Instance_tcproc_fan_fanAck),
    ((PortId 3), TempControlSoftwareSystem_p_Instance_tcproc_tempControl_currentTemp),
    ((PortId 4), TempControlSoftwareSystem_p_Instance_tcproc_tempControl_fanAck),
    ((PortId 5), TempControlSoftwareSystem_p_Instance_tcproc_tempControl_setPoint),
    ((PortId 6), TempControlSoftwareSystem_p_Instance_tcproc_tempControl_fanCmd),
    ((PortId 7), TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface_currentTemp),
    ((PortId 8), TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface_setPoint)
  ]"
declare sysPortDescrs_def [simp add]



(*===============================================================*
*   C O M P O N E N T   D E S C R I P T O R S
*===============================================================*)

definition sysCompDescrs
  where "sysCompDescrs = map_of [
    ((CompId 0), TempControlSoftwareSystem_p_Instance_tcproc_tempSensor),
    ((CompId 1), TempControlSoftwareSystem_p_Instance_tcproc_fan),
    ((CompId 2), TempControlSoftwareSystem_p_Instance_tcproc_tempControl),
    ((CompId 3), TempControlSoftwareSystem_p_Instance_tcproc_operatorInterface)
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