CLASS cl_udp_client DEFINITION.

PUBLIC SECTION.
  METHODS send_message
    IMPORTING
      VALUE(rv_message) TYPE string.

  METHODS constructor
    IMPORTING
      VALUE(rv_host) TYPE string
      VALUE(rv_port) TYPE i.

PRIVATE SECTION.
  DATA(go_connection) TYPE REF TO if_os_i.

ENDCLASS.

CLASS cl_udp_client IMPLEMENTATION.

METHOD constructor.
  TRY.
      go_connection = cl_os_factory=>create_udp_connection( iv_host = rv_host iv_port = rv_port ).
    CATCH cx_root INTO DATA(lo_exception).
      WRITE: / 'Error creating UDP connection:', lo_exception->get_text( ).
  ENDTRY.
ENDMETHOD.

METHOD send_message.
  TRY.
      go_connection->send( iv_data = rv_message ).
    CATCH cx_root INTO DATA(lo_exception).
      WRITE: / 'Error sending UDP message:', lo_exception->get_text( ).
  ENDTRY.
ENDMETHOD.

ENDCLASS.
