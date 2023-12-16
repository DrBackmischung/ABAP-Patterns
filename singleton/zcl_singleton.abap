CLASS zcl_singleton DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS get_instance
      RETURNING
        VALUE(ro_instance) TYPE REF TO zcl_singleton.

    METHODS do_something.

  PRIVATE SECTION.
    CLASS-DATA: lo_instance TYPE REF TO zcl_singleton.

ENDCLASS.

CLASS zcl_singleton IMPLEMENTATION.
  METHOD get_instance.
    IF lo_instance IS INITIAL.
      CREATE OBJECT lo_instance.
    ENDIF.

    ro_instance = lo_instance.
  ENDMETHOD.

  METHOD do_something.
    WRITE: / 'Singleton instance is doing something...'.
  ENDMETHOD.
ENDCLASS.
