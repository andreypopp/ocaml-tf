(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type update_policy = {
  job_execution_timeout_minutes : float prop;
      (** job_execution_timeout_minutes *)
  terminate_jobs_on_update : bool prop;
      (** terminate_jobs_on_update *)
}

type aws_batch_compute_environment

val aws_batch_compute_environment :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  compute_environment_name:string prop ->
  unit ->
  aws_batch_compute_environment

val yojson_of_aws_batch_compute_environment :
  aws_batch_compute_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  compute_environment_name : string prop;
  ecs_cluster_arn : string prop;
  id : string prop;
  service_role : string prop;
  state : string prop;
  status : string prop;
  status_reason : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  update_policy : update_policy list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  compute_environment_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  compute_environment_name:string prop ->
  string ->
  t Tf_core.resource
