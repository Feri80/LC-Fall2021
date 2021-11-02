
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name session4 -dir "F:/Lessons/Term 3/LC/Lab/4/session4/planAhead_run_2" -part xc3s400pq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "F:/Lessons/Term 3/LC/Lab/4/session4/paritiy3_gen_sop.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {F:/Lessons/Term 3/LC/Lab/4/session4} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "paritiy3_gen_sop.ucf" [current_fileset -constrset]
add_files [list {paritiy3_gen_sop.ucf}] -fileset [get_property constrset [current_run]]
link_design
