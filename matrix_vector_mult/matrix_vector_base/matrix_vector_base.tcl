open_project matrix_vector_base.proj -reset
add_files ./matrix_vector_base.c
add_files -tb ./matrix_vector_base-top.c
set_top matrix_vector
open_solution solution -reset
set_part virtex7
create_clock -period 5
csim_design
csynth_design
exit
