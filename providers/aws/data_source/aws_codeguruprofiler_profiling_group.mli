(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type agent_orchestration_config = {
  profiling_enabled : bool prop;  (** profiling_enabled *)
}

type profiling_status__latest_aggregated_profile = {
  period : string prop;  (** period *)
  start : string prop;  (** start *)
}

type profiling_status = {
  latest_agent_orchestrated_at : string prop;
      (** latest_agent_orchestrated_at *)
  latest_agent_profile_reported_at : string prop;
      (** latest_agent_profile_reported_at *)
  latest_aggregated_profile :
    profiling_status__latest_aggregated_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** latest_aggregated_profile *)
}

type aws_codeguruprofiler_profiling_group

val aws_codeguruprofiler_profiling_group :
  name:string prop -> unit -> aws_codeguruprofiler_profiling_group

val yojson_of_aws_codeguruprofiler_profiling_group :
  aws_codeguruprofiler_profiling_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  agent_orchestration_config : agent_orchestration_config list prop;
  arn : string prop;
  compute_platform : string prop;
  created_at : string prop;
  id : string prop;
  name : string prop;
  profiling_status : profiling_status list prop;
  tags : string Tf_core.assoc prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module -> name:string prop -> string -> t

val make : name:string prop -> string -> t Tf_core.resource
