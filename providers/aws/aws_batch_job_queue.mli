(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type compute_environment_order

val compute_environment_order :
  compute_environment:string prop ->
  order:float prop ->
  unit ->
  compute_environment_order

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_batch_job_queue

val aws_batch_job_queue :
  ?compute_environments:string prop list ->
  ?scheduling_policy_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  priority:float prop ->
  state:string prop ->
  compute_environment_order:compute_environment_order list ->
  unit ->
  aws_batch_job_queue

val yojson_of_aws_batch_job_queue : aws_batch_job_queue -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  compute_environments : string list prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  scheduling_policy_arn : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?compute_environments:string prop list ->
  ?scheduling_policy_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  priority:float prop ->
  state:string prop ->
  compute_environment_order:compute_environment_order list ->
  string ->
  t

val make :
  ?compute_environments:string prop list ->
  ?scheduling_policy_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  priority:float prop ->
  state:string prop ->
  compute_environment_order:compute_environment_order list ->
  string ->
  t Tf_core.resource
