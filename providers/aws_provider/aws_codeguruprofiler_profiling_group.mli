(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codeguruprofiler_profiling_group__agent_orchestration_config
type aws_codeguruprofiler_profiling_group

val aws_codeguruprofiler_profiling_group :
  ?compute_platform:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  agent_orchestration_config:
    aws_codeguruprofiler_profiling_group__agent_orchestration_config
    list ->
  string ->
  unit
