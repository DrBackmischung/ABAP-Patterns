DATA(lo_udp_client) TYPE REF TO cl_udp_client.

CREATE OBJECT lo_udp_client
  EXPORTING
    host = '127.0.0.1'
    port = 5005.

lo_udp_client->send_message( 'Hello, UDP Server!' ).
