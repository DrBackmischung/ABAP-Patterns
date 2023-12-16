DATA(lo_sort_context) = NEW zcl_sort_context( ).

" Set Bubble Sort strategy
DATA(lo_bubble_sort) = NEW zcl_bubble_sort( ).
lo_sort_context->set_strategy( lo_bubble_sort ).
DATA(lt_sorted_data_bubble) = lo_sort_context->perform_sorting( lt_unsorted_data ).
WRITE: / 'Bubble Sort:', lt_sorted_data_bubble.

" Set Selection Sort strategy
DATA(lo_selection_sort) = NEW zcl_selection_sort( ).
lo_sort_context->set_strategy( lo_selection_sort ).
DATA(lt_sorted_data_selection) = lo_sort_context->perform_sorting( lt_unsorted_data ).
WRITE: / 'Selection Sort:', lt_sorted_data_selection.

" Set Insertion Sort strategy
DATA(lo_insertion_sort) = NEW zcl_insertion_sort( ).
lo_sort_context->set_strategy( lo_insertion_sort ).
DATA(lt_sorted_data_insertion) = lo_sort_context->perform_sorting( lt_unsorted_data ).
WRITE: / 'Insertion Sort:', lt_sorted_data_insertion.

" Set Merge Sort strategy
DATA(lo_merge_sort) = NEW zcl_merge_sort( ).
lo_sort_context->set_strategy( lo_merge_sort ).
DATA(lt_sorted_data_merge) = lo_sort_context->perform_sorting( lt_unsorted_data ).
WRITE: / 'Merge Sort:', lt_sorted_data_merge.

" Set Quick Sort strategy
DATA(lo_quick_sort) = NEW zcl_quick_sort( ).
lo_sort_context->set_strategy( lo_quick_sort ).
DATA(lt_sorted_data_quick) = lo_sort_context->perform_sorting( lt_unsorted_data ).
WRITE: / 'Quick Sort:', lt_sorted_data_quick.
