(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type agent_orchestration_config

val agent_orchestration_config :
  profiling_enabled:bool prop -> unit -> agent_orchestration_config

type aws_codeguruprofiler_profiling_group

val aws_codeguruprofiler_profiling_group :
  ?compute_platform:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?agent_orchestration_config:agent_orchestration_config list ->
  name:string prop ->
  unit ->
  aws_codeguruprofiler_profiling_group

val yojson_of_aws_codeguruprofiler_profiling_group :
  aws_codeguruprofiler_profiling_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  compute_platform : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?compute_platform:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?agent_orchestration_config:agent_orchestration_config list ->
  name:string prop ->
  string ->
  t

val make :
  ?compute_platform:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?agent_orchestration_config:agent_orchestration_config list ->
  name:string prop ->
  string ->
  t Tf_core.resource
