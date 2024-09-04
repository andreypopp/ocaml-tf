(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type compute_environment_order = {
  compute_environment : string prop;  (** compute_environment *)
  order : float prop;  (** order *)
}

type aws_batch_job_queue

val aws_batch_job_queue :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  aws_batch_job_queue

val yojson_of_aws_batch_job_queue : aws_batch_job_queue -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  compute_environment_order : compute_environment_order list prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  scheduling_policy_arn : string prop;
  state : string prop;
  status : string prop;
  status_reason : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t Tf_core.resource
