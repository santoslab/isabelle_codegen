// #Sireum

package org.sireum.hamr.codegen.jisabelle

import org.sireum._
import art._

object Generator {

  //=============================================
  //   T e m p l a t e s
  //=============================================

  // PortDesc
  def portDescrTemplate(name: String, portId: Art.PortId, parentCompId: Art.BridgeId, direction: String, kind: String, size: String, overflow: String, urgency: String): ST = {
    val s =
      st"""//-- Port: ${name} [id = ${portId}] ---
          |@strictpure def ${name} : Model.PortDescr =
          |   Model.PortDescr(
          |     "${name}", // port name
          |     ${portId}, // port id
          |     ${parentCompId}, // parent component id
          |     Model.PortProperties.Direction.${direction}, // direction
          |     Model.PortProperties.Kind.${kind}, // kind
          |     ${size}, // size
          |     Model.PortProperties.OverflowPolicy.${overflow}, // overflow policy
          |     ${urgency} // urgency
          |   )"""
    return s
  }

  def portDescrTemplateIsa(name: String, id: String, parentCompId: String, direction: String, kind: String, size: String, overflow: String, urgency: String): ST = {
    val s =
      st"""(* -- Port: ${name} [id = ${id}] -- *)
          |definition ${name} where
          |  "${name} =
          |    mkPortDescr
          |     ''${name}''
          |     ${id}
          |     ${parentCompId}
          |     ${direction}
          |     ${kind}
          |     ${size}
          |     ${urgency}"
          |declare ${name}_def [simp add]
          |"""
    return s
  }


  // CompDesc
  def compDescrTemplate(name: String, compId: Art.BridgeId, portIdXISZ: ISZ[String], dispatchProtocolIsa: String,
                        dispatchTriggerXISZ: ISZ[String], localVarStrings: ISZ[String]): ST = {
    val s =
      st"""// -- Component: ${name} [id = ${compId}] ---
          |@strictpure def ${name} : Model.CompDescr =
          | Model.CompDescr(
          |   "${name}", // this component's human readable id
          |   ${compId}, // this component's unique numeric id
          |   ISZ[Model.PortId](${(portIdXISZ, ",")}), // ids for ports belong to this component
          |   ${dispatchProtocolIsa}, // this thread's dispatch protocol
          |   ISZ[Model.PortId](${(dispatchTriggerXISZ, ",")}), // ids for ports that are dispatch triggers for this component
          |   ISZ[Model.Var]() // local variables that belong to this component (ToDo: Not implemented yet)
          | )"""
    return s
  }

  def compDescrTemplateIsa(name: String, idIsa: String, portIdStringsIsa: ISZ[String], dispatchProtocolIsa: String,
                           dispatchTriggersIsaSeq: ISZ[String], localVarsIsaSeq: ISZ[String]): ST = {
    val s =
      st"""(* -- Comp: ${name} [id = ${idIsa}] -- *)
          |definition ${name} where
          |  "${name} =
          |     mkCompDescr
          |     ''${name}''
          |     ${idIsa}
          |     {${(portIdStringsIsa, ",")}}
          |     ${dispatchProtocolIsa}
          |     {${(dispatchTriggersIsaSeq, ",")}}
          |     {${(localVarsIsaSeq, ",")}}"
          |declare ${name}_def [simp add]
          | """
    return s
  }

  // Comp and Port Aggregate Information
  def compAggregateDescrTemplate(name: String, compIdString: String, portDescrs: ISZ[String], compDescr: String): ST = {
    val s =
      st"""//===============================================================
          |//   C o m p o n e n t: ${name} [id = ${compIdString}] ---
          |//===============================================================
          |
          |${(portDescrs, "\n\n")}
          |
          |${compDescr}
          |"""
    return s
  }

  def compAggregateDescrTemplateIsa(name: String, compIdIsa: String, portDescrIsaISZ: ISZ[String], compDescrIsa: String): ST = {
    val s =
      st"""(*===============================================================*
          | *   C o m p o n e n t: ${name} [id = ${compIdIsa}] ---
          | *===============================================================*)
          |
          |${(portDescrIsaISZ, "\n\n")}
          |
          |${compDescrIsa}
          |"""
    return s
  }

  def compMapTemplate(mapEntries: ISZ[(String,String)]): ST = {
    val st =
      st"""Model.comps =
          |  Map[Model.CompId, Model.CompDescr](
          |   ISZ(
          |     ${(mapEntries, ",\n")}
          |      )
          |  )"""
    return st
  }

  def portMapTemplate(mapEntries: ISZ[(String, String)]): ST = {
    val st =
      st"""Model.ports =
          |  Map[Model.PortId, Model.PortDescr](
          |   ISZ(
          |     ${(mapEntries, ",\n")}
          |      )
          |  )"""
    return st
  }

  //  Model.conns = Map[Model.PortId, ISZ[Model.PortId]](
  //    // port 0 is connected to port 1
  //    ISZ((0: Z, ISZ(1: Z)))
  //  )

  def connMapEntryTemplate(fromPortId: Art.PortId, toPortIds: ISZ[Art.PortId]): ST = {
    val st =
      st"""(${fromPortId}, ISZ(${(toPortIds, ",")}))"""
    return st
  }

  /*  Template for static map declaration associating a source port id to a list of
   *  destination port ids.  Each map entry has the form
   *    (<source port id>, (<dest1 port id>, ..., <destn port id>))
   */
  def connMapTemplate(mapEntries: ISZ[String]): ST = {
    val st =
      st"""Model.conns =
          |  Map[Model.PortId, ISZ[Model.PortId]](
          |   ISZ(
          |     ${(mapEntries, ",\n")}
          |      )
          |  )"""
    return st
  }

  def setModelInstanceTemplate(compMapXSem: String, portMapXSem: String, connMapXSem: String): ST = {
    val st =
      st"""def setModelInstance(): Unit = {
          |
          |  ${compMapXSem}
          |  ${portMapXSem}
          |  ${connMapXSem}
          |}
        """
    return st
  }

  def XSemFileTemplate(modelName: String, compDescrXSemISZ: ISZ[String], setModelInstanceXSem: String): ST = {
    val st =
      st"""// #Sireum
          |package aadlsem
          |
          |import org.sireum._
          |import aadlsem.Model._
          |
          |object ${modelName}ModelInfo {
          |
          |  ${(compDescrXSemISZ, "\n")}
          |
          |  ${setModelInstanceXSem}
          |}
        """
    return st
  }

  //  @datatype class Ports(dataIns: ISZ[UPort],
  //                        dataOuts: ISZ[UPort],
  //                        eventIns: ISZ[UPort],
  //                        eventOuts: ISZ[UPort])
  //
  def allPorts(ps: art.Bridge.Ports) : ISZ[art.UPort] = {
    return ps.dataIns ++ ps.eventIns ++ ps.dataOuts ++ ps.eventOuts
  }

  //=============================================
  //   G e n e r a t o r s
  //=============================================

  // ToDo: trivial generators for comp/port names and ids

  def genPortIdIsa(portId: Art.PortId): String = {
    return s"(PortId ${portId})"
  }

  def genCompIdIsa(compId: Art.BridgeId): String = {
    return s"(CompId ${compId})"
  }

  def genPortDirectionXSem(port: UPort): String = {
    port.mode match {
      case PortMode.DataIn => return "In"
      case PortMode.DataOut => return "Out"
      case PortMode.EventIn => return "In"
      case PortMode.EventOut => return "Out"
    }
  }

  def genPortDirectionIsa(port: UPort): String = {
    port.mode match {
      case PortMode.DataIn => return "In"
      case PortMode.DataOut => return "Out"
      case PortMode.EventIn => return "In"
      case PortMode.EventOut => return "Out"
    }
  }

  def genPortKindXSem(port: UPort): String = {
    port.mode match {
      case PortMode.DataIn => return "Data"
      case PortMode.DataOut => return "Data"
      case PortMode.EventIn => return "Event"
      case PortMode.EventOut => return "Event"
    }
  }

  def genPortKindIsa(port: UPort): String = {
    port.mode match {
      case PortMode.DataIn => return "Data"
      case PortMode.DataOut => return "Data"
      case PortMode.EventIn => return "Event"
      case PortMode.EventOut => return "Event"
    }
  }

  def genPortSizeXSem(port: UPort): String = {
    // right now, all ports have size one (except event ports?  double check)
    return "1"
  }

  def genPortSizeIsa(port: UPort): String = {
    // right now, all ports have size one (except event ports?  double check)
    return "1"
  }

  def genPortOverflowXSem(port: UPort): String = {
    // right now, overflow policy is implemented in HAMR now, so just return DropOldest
    return "DropOldest"
  }


  def genPortOverflowIsa(port: UPort): String = {
    // right now, overflow policy is implemented in HAMR now, so just return DropOldest
    return "DropOldest"
  }

  def genPortUrgencyXSem(port: UPort): String = {
    // ToDo: Finalize urgency generation
    return "0"
  }

  def genPortUrgencyIsa(port: UPort): String = {
    // ToDo: Finalize urgency generation
    return "0"
  }

  // G e n e r a t e    P o r t
  def genPortXSem(bridge: Bridge, port: UPort): String = {
    val direction = genPortDirectionXSem(port)
    val kind = genPortKindXSem(port)
    val size = genPortSizeXSem(port)
    val overflow = genPortOverflowXSem(port)
    val urgency = genPortUrgencyXSem(port)
    val s =
      portDescrTemplate(port.name, port.id, bridge.id, direction, kind, size, overflow, urgency).render
    return s
  }

  def genPortIsa(bridge: Bridge, port: UPort): String = {
    val nameIsa = port.name
    val portIdIsa = genPortIdIsa(port.id)
    val parentCompIdIsa = genCompIdIsa(bridge.id)
    val directionIsa = genPortDirectionIsa(port)
    val kindIsa = genPortKindIsa(port)
    val sizeIsa = genPortSizeIsa(port)
    val overflowIsa = genPortOverflowIsa(port)
    val urgencyIsa = genPortUrgencyIsa(port)
    val s =
      portDescrTemplateIsa(
        nameIsa, portIdIsa, parentCompIdIsa, directionIsa,
        kindIsa, sizeIsa, overflowIsa, urgencyIsa).render
    return s
  }

  // G e n e r a t e    C o m p o n e n t

  def genDispatchProtocolXSem(dp: art.DispatchPropertyProtocol): String = {
    val dpTypePrefix: String = "ThreadProperties.DispatchProtocol"
    dp match {
      case art.DispatchPropertyProtocol.Periodic(_) =>
        return s"${dpTypePrefix}.Periodic"
      case art.DispatchPropertyProtocol.Sporadic(_) =>
        return s"${dpTypePrefix}.Sporadic"
    }
  }

  def genDispatchProtocolIsa(dp: art.DispatchPropertyProtocol): String = {
    val dpTypePrefix: String = "DispatchProtocol"
    dp match {
      case art.DispatchPropertyProtocol.Periodic(_) =>
        return s"${dpTypePrefix}.Periodic"
      case art.DispatchPropertyProtocol.Sporadic(_) =>
        return s"${dpTypePrefix}.Sporadic"
    }
  }

  def genDispatchTriggersIsaSeq(dispatchTriggersOpt: Option[ISZ[Art.PortId]]): ISZ[String] = {
    // declare an accumulator for the result (sequence of strings represent Isabelle port ids)
    var dispatchTriggersIsaSeq: ISZ[String] = ISZ()

    // If None() then return empty sequence
    if (dispatchTriggersOpt.isEmpty) {
      return dispatchTriggersIsaSeq
    }

    // ...otherwise get the dispatch trigger sequence
    val dispatchTriggers = dispatchTriggersOpt.get

    // ...and iterate over it
    for (dt <- dispatchTriggers) {
      // from the HAMR port id for the dispatch trigger, construct a string representing an Isabelle port id
      val dtIsa: String = genPortIdIsa(dt)
      // add the Isabelle representation to the accumulator
      dispatchTriggersIsaSeq = dispatchTriggersIsaSeq ++ ISZ(dtIsa)
    }
    // return the accumulated Isabelle port ID references
    return dispatchTriggersIsaSeq
  }

  def genCompXSem(bridge: Bridge): String = {
    var portIdStrings: ISZ[String] = ISZ()
    var portDescrs: ISZ[String] = ISZ()
    val varXISZ = ISZ[String]() // accumulator to hold a sequence of strings representing X var ids of component's local variables
    val dispatchProtocolXSem = genDispatchProtocolXSem(bridge.dispatchProtocol) // string for XSem rep of dispatch protocol
    val dispatchTriggersXISZ: ISZ[String] = ISZ() // genDispatchTriggersIsaSeq(None())
    // ToDo: generate the above for actual dispatch trigger list.
    // Art needs to be refactored so that dispatch triggers appears on an interface somewhere.
    // Right now it does not appear, so I can't access it for a generic component.

    for (port <- allPorts(bridge.ports)) {
      val portIdString = s"${port.name}.id"
      portIdStrings = portIdStrings ++ ISZ(portIdString)
      portDescrs = portDescrs ++ ISZ(genPortXSem(bridge, port))
    }
    val compDescr = compDescrTemplate(bridge.name,bridge.id, portIdStrings, dispatchProtocolXSem, dispatchTriggersXISZ, varXISZ).render
    val compAggregateDescr = compAggregateDescrTemplate(bridge.name, bridge.id.string, portDescrs, compDescr).render
    return compAggregateDescr
  }

  def genCompIsa(bridge: Bridge): ST = {
    val nameIsa = bridge.name // string for human readable identifier to be used in Isabelle name for a component
    val idIsa = genCompIdIsa(bridge.id) // string for Isabelle numeric id
    var portIdsIsa = ISZ[String]() // accumulator to hold strings representing Isabelle port ids of component's ports
    val varsIsa = ISZ[String]() // accumulator to hold strings representing Isabelle var ids of component's local variables
    val dispatchProtocolIsa = genDispatchProtocolIsa(bridge.dispatchProtocol) // string for Isabelle rep of dispatch protocol

    // Art needs to be refactored so that dispatch triggers appears on an interface somewhere.
    // Right now it does not appear, so I can't access it for a generic component.

    var portDescrIsaISZ: ISZ[String] = ISZ() // accumulator for Isabelle code blocks of port descriptor declarations
    var eventPortIds: ISZ[Art.PortId] = ISZ()
    val isSporadic: B = bridge.dispatchProtocol match {
      case art.DispatchPropertyProtocol.Periodic(_) => F
      case art.DispatchPropertyProtocol.Sporadic(_) => T
    }
    for (port <- allPorts(bridge.ports)) {
      // for now, generate references to raw port ids, instead of port descr name with id field access
      // val portIdString = s"${port.name}.id"
      val portIdStringIsa = genPortIdIsa(port.id)
      portIdsIsa = portIdsIsa ++ ISZ(portIdStringIsa)
      portDescrIsaISZ = portDescrIsaISZ ++ ISZ(genPortIsa(bridge, port))

      // add dispatch triggers to eventPortIds only for sporadic components
      // TODO handle eventdata ports
      if(port.mode == PortMode.EventIn && isSporadic){
        eventPortIds = eventPortIds ++ ISZ(port.id)
      }
    }

    var eventPortIdsOpt: Option[ISZ[Art.PortId]] = None()
    if(!eventPortIds.isEmpty){
      eventPortIdsOpt = Some(eventPortIds)
    }

    val dispatchTriggersIsaSeq: ISZ[String] = genDispatchTriggersIsaSeq(eventPortIdsOpt)

    // build the Isabelle component descriptor declaration code block
    val compDescrIsa =
      compDescrTemplateIsa(
        nameIsa, idIsa, portIdsIsa, dispatchProtocolIsa, dispatchTriggersIsaSeq, varsIsa).render
    // aggregate the Isabelle port descriptor declarations (portDescrIsaISZ) and component descriptor (compDescrIsa) declaration,
    // with some generated comments that reference the bridge.name and Isabelle rep of the component id (idIsa)
    val compAggregateDescrIsa = compAggregateDescrTemplateIsa(bridge.name, idIsa, portDescrIsaISZ, compDescrIsa)
    return compAggregateDescrIsa
  }

  // G e n e r a t e    C o n n e c t i o n s

  def genConnsXSem(components: IS[Art.BridgeId,Bridge], connections: IS[Art.ConnectionId,UConnection]): String = {
    var connMap: Map[Art.PortId, ISZ[Art.PortId]] = Map[Art.PortId, ISZ[Art.PortId]](ISZ())
    // Well-formedness property:
    //   each output port in the system has an entry in the map.
    //   If it has no connected destinations, the entry associates to an empty list

    // ---- initialization of connections map to obtain well-formedness property:
    //   each output port in the instance model is associated with an empty sequence of targets.
    //   The empty sequence will eventually be expanded to list any input ports to which outport is connected.
    for (comp <- components) {
      // for all output ports of comp
      val compOutPorts = comp.ports.dataOuts ++ comp.ports.eventOuts
      for (commOutPort <- compOutPorts) {
        // bind the output port's id to an empty port id list
        connMap = connMap + (commOutPort.id ~> ISZ[Art.PortId]())
      }
    }

    // ---- populate the connection map ----
    for (conn <- connections) {
      // get connection source port id
      val fromPortId: Art.PortId = conn.from.id
      // get connection target port id
      val toPortId: Art.PortId = conn.to.id
      // get the current entries for the source port id in the connections  map
      val connsMapToEntries = connMap.get(fromPortId).get // should never fail is Arch Description connections only have output ports in "from fields"
      // ToDo: insert check for duplicate "to" ports -- Note: such a case should not happen as along is there are no duplication connections in the Arch Desc
      // add the current target port id to end of the existing target port ids
      val connsMapToEntriesNew = connsMapToEntries ++ ISZ(toPortId)
      // update the connections map
      connMap = connMap + (fromPortId ~> connsMapToEntriesNew)
    }

    // --- generate code for each entry in the connection map ---
    var connMapEntryXSemISZ = ISZ[String]()
    for (portId <- connMap.keys) {
      // generate code for this map entry
      val connMapEntryXSem = connMapEntryTemplate(portId, connMap.get(portId).get).render
      // add the code to an accumulator
      connMapEntryXSemISZ = connMapEntryXSemISZ ++ ISZ(connMapEntryXSem)
    }

    val connMapXSem = connMapTemplate(connMapEntryXSemISZ).render

    return connMapXSem
  }


  // G e n e r a t e    S y s t e m     A r c h i t e c t u r e
  def genSlangXSem(modelName: String, ad: ArchitectureDescription):ST = {
    val components = ad.components
    val connections = ad.connections

    var compDescrXSemISZ: ISZ[String] = ISZ[String]()
    var compMapEntries: ISZ[(String,String)] = ISZ[(String,String)]()
    var portMapEntries: ISZ[(String, String)] = ISZ[(String, String)]()

    // generate individual components and associated ports
    for (comp <- components) {
      // accumulate information for component map entries, e.g., (<compId>, <compName>)
      val compIdString = comp.id.toString
      val compName = comp.name
      compMapEntries = compMapEntries ++ ISZ((compIdString, compName))

      // accumulate information for port map entries, e.g., (<portId>, <portName>)
      for (port <- allPorts(comp.ports)) {
        val portIdString = port.id.toString
        val portName = port.name
        portMapEntries = portMapEntries ++ ISZ((portIdString, portName))
      }

      // generate component descriptor and port descriptors for ports belonging to component
      // println(genCompXSem(comp)) // ToDo: This should be accumulated for placement in a template
      compDescrXSemISZ = compDescrXSemISZ ++ ISZ(genCompXSem(comp))
    }

    // generate code for component map entries
    val compMapXSem = compMapTemplate(compMapEntries).render
    // generate code for port map entries
    val portMapXSem = portMapTemplate(portMapEntries).render
    // generate code for connection map entries
    val connMapXSem = genConnsXSem(components, connections)

    // generate aggregate code for comp map, port map, and connections definition
    val setModelInstanceXSem = setModelInstanceTemplate(compMapXSem,portMapXSem,connMapXSem).render
    // println(setModelInstanceXSem)

    val xSemFile = XSemFileTemplate(modelName, compDescrXSemISZ, setModelInstanceXSem)

    return xSemFile
  }

  def connMapTemplateIsa(conns: ISZ[ST]): ST = {
    return(
      st"""
          |(*===============================================================*
          | *   S Y S T E M   C O N N E C T I O N S
          | *===============================================================*)
          |
          |definition sysConns
          |  where "sysConns = map_of [
          |    ${(conns, s",\n")}
          |  ]"
          |declare sysConns_def [simp add]
      """)
  }

  def genConnsIsa(connections: IS[Art.ConnectionId, UConnection]): ST = {
    var connectionStrings = ISZ[ST]()
    var connMap = Map[Art.PortId, ISZ[Art.PortId]](ISZ())

    for (conn <- connections) {
      // get connection source port id
      val fromPortId: Art.PortId = conn.from.id
      // put the from id into the map if it is not already
      if (connMap.get(fromPortId).isEmpty) {
        connMap = connMap + (fromPortId ~> ISZ())
      }

      // get connection target port id
      val toPortId: Art.PortId = conn.to.id
      // get the current entries for the source port id in the connections  map
      val connsMapToEntries = connMap.get(fromPortId).get // should never fail is Arch Description connections only have output ports in "from fields"
      // ToDo: insert check for duplicate "to" ports -- Note: such a case should not happen as along is there are no duplication connections in the Arch Desc
      // add the current target port id to end of the existing target port ids
      val connsMapToEntriesNew = connsMapToEntries ++ ISZ(toPortId)
      // update the connections map
      connMap = connMap + (fromPortId ~> connsMapToEntriesNew)
    }

    for (from <- connMap.keys) {
      val fromPortIdIsa = genPortIdIsa(from) // get Isa PortId of the from port
      // convert to ports into a list of their Isa PortIds, and then format
      val toPortIdsIsa = st"${(connMap.get(from).get.map(pid => genPortIdIsa(pid)), ",")}".render

      // put together into one string, and add to connectionStrings
      connectionStrings = connectionStrings ++ ISZ(st"(${fromPortIdIsa}, {${toPortIdsIsa}})")
    }

    return connMapTemplateIsa(connectionStrings)
  }

  def portDescrsTemplateIsa(ports: ISZ[ST]): ST = {
    return (
      st"""
          |(*===============================================================*
          |*   P O R T   D E S C R I P T O R S
          |*===============================================================*)
          |
          |definition sysPortDescrs
          |  where "sysPortDescrs = map_of [
          |    ${(ports, ",\n")}
          |  ]"
          |declare sysPortDescrs_def [simp add]
        """)
  }

  def genPortDescrsIsa(ports: ISZ[UPort]): ST = {
    var descrMapStrings = ISZ[ST]()

    for (port <- ports) {
      val portIdIsa = genPortIdIsa(port.id)

      descrMapStrings = descrMapStrings ++ ISZ(st"(${portIdIsa}, ${port.name})") // we can use port.name since each port descriptor was named as such
    }

    return portDescrsTemplateIsa(descrMapStrings)
  }

  def compDescrsTemplateIsa(comps: ISZ[ST]): ST = {
    return (
      st"""
          |(*===============================================================*
          |*   C O M P O N E N T   D E S C R I P T O R S
          |*===============================================================*)
          |
          |definition sysCompDescrs
          |  where "sysCompDescrs = map_of [
          |    ${(comps, ",\n")}
          |  ]"
          |declare sysCompDescrs_def [simp add]
        """)
  }

  def genCompDescrsIsa(components: IS[Art.BridgeId, Bridge]): ST = {
    var descrMapStrings = ISZ[ST]()

    for(comp <- components) {
      val compIdIsa = genCompIdIsa(comp.id)
      descrMapStrings = descrMapStrings ++ ISZ(st"(${compIdIsa}, ${comp.name})")
    }

    return compDescrsTemplateIsa(descrMapStrings)
  }

  def genSystemModelIsa(): ST = {
      return (
      st"""
          |(*===============================================================*
          |*   T O P - L E V E L  S Y S T E M   M O D E L
          |*===============================================================*)
          |
          |definition sysModel
          |  where "sysModel = mkModel sysCompDescrs sysPortDescrs sysConns"
          |declare sysModel_def [simp add]
        """)
  }

  def genWellFormednessLemmasIsa(): ST = {
    val s =
      st"""
          |lemma sysModel_wf_Model_PortDescr: "wf_Model_PortDescr sysModel"
          |  by (simp add: wf_Model_PortDescr_def wf_PortDescr_def)
          |
          |lemma sysModel_wf_Model_PortDescrsIds:  "wf_Model_PortDescrsIds sysModel"
          |  by (simp add: wf_Model_PortDescrsIds_def)
          |
          |lemma sysModel_wf_Model_CompDescrsIds:  "wf_Model_CompDescrsIds sysModel"
          |  by (simp add: wf_Model_CompDescrsIds_def)
          |
          |lemma sysModel_wf_Model_PortDescrsCompId: "wf_Model_PortDescrsCompId sysModel"
          |  by (simp add: wf_Model_PortDescrsCompId_def)
          |
          |lemma sysModel_wf_Model_CompDescrsContainedPortIds: "wf_Model_CompDescrsContainedPortIds sysModel"
          |  by (simp add: wf_Model_CompDescrsContainedPortIds_def)
          |
          |lemma sysModel_wf_Model_ConnsPortIds: "wf_Model_ConnsPortIds sysModel"
          |  by (simp add: wf_Model_ConnsPortIds_def)
          |
          |lemma sysModel_wf_Model_DisjointPortIds: "wf_Model_DisjointPortIds sysModel"
          |  by (simp add: wf_Model_DisjointPortIds_def)
          |
          |lemma sysModel_wf_Model_ConnsPortCategories: "wf_Model_ConnsPortCategories sysModel"
          |  by (simp add: wf_Model_ConnsPortCategories_def)
          |
          |lemma sysModel_wf_Model_InDataPorts: "wf_Model_InDataPorts sysModel"
          |  by (simp add: wf_Model_InDataPorts_def)
          |
          |lemma sysModel_wf_Model_SporadicComp: "wf_Model_SporadicComp sysModel"
          |  by (simp add: wf_Model_SporadicComp_def)
        """

    return s
  }

  def genSystemInstanceIsa(modelName: String, ad: ArchitectureDescription): ST = {
    val components = ad.components
    val connections = ad.connections

    var compMapEntries: ISZ[(String, String)] = ISZ[(String, String)]() // is this needed?
    var compPorts: ISZ[UPort] = ISZ()

    var pieces: ISZ[ST] = IS()

    pieces = pieces :+
      st"""
          |theory $modelName
          |  imports Model VarState PortState ThreadState
          |begin
        """

    // generate individual components and associated ports
    for (comp <- components) {
      val compIdString = comp.id.toString
      val compName = comp.name
      compMapEntries = compMapEntries ++ ISZ((compIdString, compName))
      compPorts = compPorts ++ allPorts(comp.ports)
      pieces = pieces :+ genCompIsa(comp)
    }

    pieces = pieces :+ genConnsIsa(connections)

    pieces = pieces :+ genPortDescrsIsa(compPorts)

    pieces = pieces :+ genCompDescrsIsa(components)

    pieces = pieces :+ genSystemModelIsa()

    pieces = pieces :+ genWellFormednessLemmasIsa()

    pieces = pieces :+ st"end"

    return st"${(pieces, "\n\n")}"
  }
}
