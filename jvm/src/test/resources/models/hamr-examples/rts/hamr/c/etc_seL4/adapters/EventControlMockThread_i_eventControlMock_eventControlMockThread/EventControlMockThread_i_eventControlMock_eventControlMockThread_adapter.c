#include <EventControlMockThread_i_eventControlMock_eventControlMockThread_adapter.h>

Unit RTS_EventControl_EventControlMockThread_i_eventControlMock_eventControlMockThread_adapter_initialiseArchitecture(STACK_FRAME_ONLY) {
  DeclNewStackFrame(caller, "EventControlMockThread_i_eventControlMock_eventControlMockThread_adapter.c", "", "RTS_EventControl_EventControlMockThread_i_eventControlMock_eventControlMockThread_adapter_initialiseArchitecture", 0);

  RTS_EventControlMockThread_i_eventControlMock_eventControlMockThread_eventControlMockThread_initialiseArchitecture(SF_LAST);
}

Unit RTS_EventControl_EventControlMockThread_i_eventControlMock_eventControlMockThread_adapter_initialiseEntryPoint(STACK_FRAME_ONLY) {
  DeclNewStackFrame(caller, "EventControlMockThread_i_eventControlMock_eventControlMockThread_adapter.c", "", "RTS_EventControl_EventControlMockThread_i_eventControlMock_eventControlMockThread_adapter_initialiseEntryPoint", 0);

  RTS_EventControlMockThread_i_eventControlMock_eventControlMockThread_eventControlMockThread_initialiseEntryPoint(SF_LAST);
}

Unit RTS_EventControl_EventControlMockThread_i_eventControlMock_eventControlMockThread_adapter_computeEntryPoint(STACK_FRAME_ONLY) {
  DeclNewStackFrame(caller, "EventControlMockThread_i_eventControlMock_eventControlMockThread_adapter.c", "", "RTS_EventControl_EventControlMockThread_i_eventControlMock_eventControlMockThread_adapter_computeEntryPoint", 0);

  RTS_EventControlMockThread_i_eventControlMock_eventControlMockThread_eventControlMockThread_computeEntryPoint(SF_LAST);
}

art_Bridge_EntryPoints RTS_EventControl_EventControlMockThread_i_eventControlMock_eventControlMockThread_adapter_entryPoints(STACK_FRAME_ONLY) {
  DeclNewStackFrame(caller, "EventControlMockThread_i_eventControlMock_eventControlMockThread_adapter.c", "", "RTS_EventControl_EventControlMockThread_i_eventControlMock_eventControlMockThread_adapter_entryPoints", 0);

  return RTS_EventControlMockThread_i_eventControlMock_eventControlMockThread_eventControlMockThread_entryPoints(SF_LAST);
}