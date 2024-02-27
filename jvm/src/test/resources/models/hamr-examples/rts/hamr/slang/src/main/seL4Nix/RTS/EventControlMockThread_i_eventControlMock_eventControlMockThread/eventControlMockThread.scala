// #Sireum

// Do not edit this file as it will be overwritten if HAMR codegen is rerun

package RTS.EventControlMockThread_i_eventControlMock_eventControlMockThread

import org.sireum._
import art._
import art.Art.BridgeId._
import art.Art.PortId._
import art.DispatchPropertyProtocol._
import art.PortMode._
import RTS._
import RTS.EventControl.EventControlMockThread_i_eventControlMock_eventControlMockThread_seL4Nix

object eventControlMockThread extends App {

  val eventControlMockThreadBridge : RTS.EventControl.EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge = {
    val manualActuatorInput1 = Port[Base_Types.Boolean] (id = portId"0", name = "RTS_i_Instance_eventControlMock_eventControlMockThread_manualActuatorInput1", mode = DataOut)
    val manualActuatorInput2 = Port[Base_Types.Boolean] (id = portId"1", name = "RTS_i_Instance_eventControlMock_eventControlMockThread_manualActuatorInput2", mode = DataOut)

    RTS.EventControl.EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge(
      id = bridgeId"0",
      name = "RTS_i_Instance_eventControlMock_eventControlMockThread",
      dispatchProtocol = Periodic(period = 1000),
      dispatchTriggers = None(),

      manualActuatorInput1 = manualActuatorInput1,
      manualActuatorInput2 = manualActuatorInput2
    )
  }

  val entryPoints: Bridge.EntryPoints = eventControlMockThreadBridge.entryPoints
  val noData: Option[DataContent] = None()

  // manualActuatorInput1: Out DataPort Base_Types.Boolean
  val manualActuatorInput1_id: Art.PortId = eventControlMockThreadBridge.manualActuatorInput1.id
  var manualActuatorInput1_port: Option[DataContent] = noData

  // manualActuatorInput2: Out DataPort Base_Types.Boolean
  val manualActuatorInput2_id: Art.PortId = eventControlMockThreadBridge.manualActuatorInput2.id
  var manualActuatorInput2_port: Option[DataContent] = noData

  def dispatchStatus(bridgeId: Art.BridgeId): DispatchStatus = {
    return TimeTriggered()
  }

  def getValue(portId: Art.PortId): Option[DataContent] = {
    halt(s"Unexpected: eventControlMockThread.getValue called with: ${portId}")
  }

  def receiveInput(eventPortIds: ISZ[Art.PortId], dataPortIds: ISZ[Art.PortId]): Unit = {
    // ignore params


  }

  def putValue(portId: Art.PortId, data: DataContent): Unit = {
    if(portId == manualActuatorInput1_id) {
      manualActuatorInput1_port = Some(data)
    } else if(portId == manualActuatorInput2_id) {
      manualActuatorInput2_port = Some(data)
    } else {
      halt(s"Unexpected: eventControlMockThread.putValue called with: ${portId}")
    }
  }

  def sendOutput(eventPortIds: ISZ[Art.PortId], dataPortIds: ISZ[Art.PortId]): Unit = {
    // ignore params

    if(manualActuatorInput1_port.nonEmpty) {
      EventControlMockThread_i_eventControlMock_eventControlMockThread_seL4Nix.manualActuatorInput1_Send(manualActuatorInput1_port.get)
      manualActuatorInput1_port = noData
    }

    if(manualActuatorInput2_port.nonEmpty) {
      EventControlMockThread_i_eventControlMock_eventControlMockThread_seL4Nix.manualActuatorInput2_Send(manualActuatorInput2_port.get)
      manualActuatorInput2_port = noData
    }
  }

  def initialiseArchitecture(): Unit = {
    // nothing to do - CAmkES is responsible for initialization
  }

  def initialiseEntryPoint(): Unit = { entryPoints.initialise() }

  def computeEntryPoint(): Unit = { entryPoints.compute() }

  def finaliseEntryPoint(): Unit = { entryPoints.finalise() }

  def main(args: ISZ[String]): Z = {

    // need to touch the following for transpiler
    initialiseArchitecture()
    initialiseEntryPoint()
    computeEntryPoint()
    finaliseEntryPoint()

    touch()

    return 0
  }

  def touch(): Unit = {
    if(F) {
      TranspilerToucher.touch()

      // add types used in Platform.receive and Platform.receiveAsync
      val mbox2Boolean_Payload: MBox2[Art.PortId, DataContent] = MBox2(portId"0", Base_Types.Boolean_Payload(T))
      val mbox2OptionDataContent: MBox2[Art.PortId, Option[DataContent]] = MBox2(portId"0", None())

      // touch each payload/type in case some are only used as a field in a record
      def printDataContent(a: art.DataContent): Unit = { println(s"${a}") }

      printDataContent(Base_Types.Boolean_Payload(Base_Types.Boolean_example()))
      printDataContent(Base_Types.Integer_Payload(Base_Types.Integer_example()))
      printDataContent(Base_Types.Integer_8_Payload(Base_Types.Integer_8_example()))
      printDataContent(Base_Types.Integer_16_Payload(Base_Types.Integer_16_example()))
      printDataContent(Base_Types.Integer_32_Payload(Base_Types.Integer_32_example()))
      printDataContent(Base_Types.Integer_64_Payload(Base_Types.Integer_64_example()))
      printDataContent(Base_Types.Unsigned_8_Payload(Base_Types.Unsigned_8_example()))
      printDataContent(Base_Types.Unsigned_16_Payload(Base_Types.Unsigned_16_example()))
      printDataContent(Base_Types.Unsigned_32_Payload(Base_Types.Unsigned_32_example()))
      printDataContent(Base_Types.Unsigned_64_Payload(Base_Types.Unsigned_64_example()))
      printDataContent(Base_Types.Float_Payload(Base_Types.Float_example()))
      printDataContent(Base_Types.Float_32_Payload(Base_Types.Float_32_example()))
      printDataContent(Base_Types.Float_64_Payload(Base_Types.Float_64_example()))
      printDataContent(Base_Types.Character_Payload(Base_Types.Character_example()))
      printDataContent(Base_Types.String_Payload(Base_Types.String_example()))
      printDataContent(art.Empty())

      RTS.EventControl.EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge.c_initialization_api.get.logInfo("")
      RTS.EventControl.EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge.c_initialization_api.get.logDebug("")
      RTS.EventControl.EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge.c_initialization_api.get.logError("")
      RTS.EventControl.EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge.c_operational_api.get.logInfo("")
      RTS.EventControl.EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge.c_operational_api.get.logDebug("")
      RTS.EventControl.EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge.c_operational_api.get.logError("")
      RTS.EventControl.EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge.c_initialization_api.get.put_manualActuatorInput1(Base_Types.Boolean_example())
      RTS.EventControl.EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge.c_operational_api.get.put_manualActuatorInput1(Base_Types.Boolean_example())
      RTS.EventControl.EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge.c_initialization_api.get.put_manualActuatorInput2(Base_Types.Boolean_example())
      RTS.EventControl.EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge.c_operational_api.get.put_manualActuatorInput2(Base_Types.Boolean_example())
    }
  }

  def logInfo(title: String, msg: String): Unit = {
    print(eventControlMockThreadBridge.name)
    print(": ")
    println(msg)
  }

  def logError(title: String, msg: String): Unit = {
    eprint(eventControlMockThreadBridge.name)
    eprint(": ")
    eprintln(msg)
  }

  def logDebug(title: String, msg: String): Unit = {
    print(eventControlMockThreadBridge.name)
    print(": ")
    println(msg)
  }

  def run(): Unit = {}

}