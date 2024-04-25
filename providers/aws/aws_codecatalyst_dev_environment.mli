(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ides

val ides : ?name:string prop -> ?runtime:string prop -> unit -> ides

type persistent_storage

val persistent_storage :
  size:float prop -> unit -> persistent_storage

type repositories

val repositories :
  ?branch_name:string prop ->
  repository_name:string prop ->
  unit ->
  repositories

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_codecatalyst_dev_environment

val aws_codecatalyst_dev_environment :
  ?alias:string prop ->
  ?id:string prop ->
  ?inactivity_timeout_minutes:float prop ->
  ?repositories:repositories list ->
  ?timeouts:timeouts ->
  instance_type:string prop ->
  project_name:string prop ->
  space_name:string prop ->
  ides:ides list ->
  persistent_storage:persistent_storage list ->
  unit ->
  aws_codecatalyst_dev_environment

val yojson_of_aws_codecatalyst_dev_environment :
  aws_codecatalyst_dev_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  alias : string prop;
  id : string prop;
  inactivity_timeout_minutes : float prop;
  instance_type : string prop;
  project_name : string prop;
  space_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?alias:string prop ->
  ?id:string prop ->
  ?inactivity_timeout_minutes:float prop ->
  ?repositories:repositories list ->
  ?timeouts:timeouts ->
  instance_type:string prop ->
  project_name:string prop ->
  space_name:string prop ->
  ides:ides list ->
  persistent_storage:persistent_storage list ->
  string ->
  t

val make :
  ?alias:string prop ->
  ?id:string prop ->
  ?inactivity_timeout_minutes:float prop ->
  ?repositories:repositories list ->
  ?timeouts:timeouts ->
  instance_type:string prop ->
  project_name:string prop ->
  space_name:string prop ->
  ides:ides list ->
  persistent_storage:persistent_storage list ->
  string ->
  t Tf_core.resource
