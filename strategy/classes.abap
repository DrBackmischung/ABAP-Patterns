INTERFACE zif_sort_strategy.
  METHODS sort
    IMPORTING
      VALUE(rt_data) TYPE TABLE
    RETURNING
      VALUE(rt_sorted_data) TYPE TABLE.
ENDINTERFACE.

CLASS zcl_bubble_sort IMPLEMENTATION zif_sort_strategy.
  METHOD zif_sort_strategy~sort.
    " Bubble Sort implementation
    rt_sorted_data = cl_sorting_utilities=>bubble_sort( rt_data ).
  ENDMETHOD.
ENDCLASS.

CLASS zcl_selection_sort IMPLEMENTATION zif_sort_strategy.
  METHOD zif_sort_strategy~sort.
    " Selection Sort implementation
    rt_sorted_data = cl_sorting_utilities=>selection_sort( rt_data ).
  ENDMETHOD.
ENDCLASS.

CLASS zcl_insertion_sort IMPLEMENTATION zif_sort_strategy.
  METHOD zif_sort_strategy~sort.
    " Insertion Sort implementation
    rt_sorted_data = cl_sorting_utilities=>insertion_sort( rt_data ).
  ENDMETHOD.
ENDCLASS.

CLASS zcl_merge_sort IMPLEMENTATION zif_sort_strategy.
  METHOD zif_sort_strategy~sort.
    " Merge Sort implementation
    rt_sorted_data = cl_sorting_utilities=>merge_sort( rt_data ).
  ENDMETHOD.
ENDCLASS.

CLASS zcl_quick_sort IMPLEMENTATION zif_sort_strategy.
  METHOD zif_sort_strategy~sort.
    " Quick Sort implementation
    rt_sorted_data = cl_sorting_utilities=>quick_sort( rt_data ).
  ENDMETHOD.
ENDCLASS.

CLASS cl_sorting_utilities DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS bubble_sort
      IMPORTING
        VALUE(rt_data) TYPE TABLE
      RETURNING
        VALUE(rt_sorted_data) TYPE TABLE.

    CLASS-METHODS selection_sort
      IMPORTING
        VALUE(rt_data) TYPE TABLE
      RETURNING
        VALUE(rt_sorted_data) TYPE TABLE.

    CLASS-METHODS insertion_sort
      IMPORTING
        VALUE(rt_data) TYPE TABLE
      RETURNING
        VALUE(rt_sorted_data) TYPE TABLE.

    CLASS-METHODS merge_sort
      IMPORTING
        VALUE(rt_data) TYPE TABLE
      RETURNING
        VALUE(rt_sorted_data) TYPE TABLE.

    CLASS-METHODS quick_sort
      IMPORTING
        VALUE(rt_data) TYPE TABLE
      RETURNING
        VALUE(rt_sorted_data) TYPE TABLE.

ENDCLASS.

CLASS cl_sorting_utilities IMPLEMENTATION.
  METHOD bubble_sort.
    " Bubble Sort implementation
    " ...
  ENDMETHOD.

  METHOD selection_sort.
    " Selection Sort implementation
    " ...
  ENDMETHOD.

  METHOD insertion_sort.
    " Insertion Sort implementation
    " ...
  ENDMETHOD.

  METHOD merge_sort.
    " Merge Sort implementation
    " ...
  ENDMETHOD.

  METHOD quick_sort.
    " Quick Sort implementation
    " ...
  ENDMETHOD.
ENDCLASS.

CLASS zcl_sort_context DEFINITION.
  PUBLIC SECTION.
    METHODS set_strategy
      IMPORTING
        VALUE(ro_strategy) TYPE REF TO zif_sort_strategy.

    METHODS perform_sorting
      IMPORTING
        VALUE(rt_data) TYPE TABLE
      RETURNING
        VALUE(rt_sorted_data) TYPE TABLE.

  PRIVATE SECTION.
    DATA(ro_strategy) TYPE REF TO zif_sort_strategy.
ENDCLASS.

CLASS zcl_sort_context IMPLEMENTATION.
  METHOD set_strategy.
    ro_strategy = ro_strategy.
  ENDMETHOD.

  METHOD perform_sorting.
    rt_sorted_data = ro_strategy->sort( rt_data ).
  ENDMETHOD.
ENDCLASS.
