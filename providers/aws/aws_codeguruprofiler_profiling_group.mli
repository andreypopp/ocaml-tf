(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codeguruprofiler_profiling_group__agent_orchestration_config
type aws_codeguruprofiler_profiling_group

type t = private {
  arn : string prop;
  compute_platform : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_codeguruprofiler_profiling_group :
  ?compute_platform:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  agent_orchestration_config:
    aws_codeguruprofiler_profiling_group__agent_orchestration_config
    list ->
  string ->
  t
