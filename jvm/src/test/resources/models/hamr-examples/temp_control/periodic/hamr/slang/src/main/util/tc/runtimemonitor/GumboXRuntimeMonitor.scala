// #Sireum

package tc.runtimemonitor

import org.sireum._
import tc.Schedulers

// Do not edit this file as it will be overwritten if HAMR codegen is rerun

object GumboXRuntimeMonitor {
  // assign a new map to threadNickNames to provide custom nicknames (e.g. shorter)
  // for 1 or more of the threads in the system
  var threadNickNames: Map[art.Art.BridgeId, String] = Schedulers.revThreadNickNames
}