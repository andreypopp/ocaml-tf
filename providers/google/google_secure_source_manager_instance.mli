(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type host_config = {
  api : string prop;  (** api *)
  git_http : string prop;  (** git_http *)
  git_ssh : string prop;  (** git_ssh *)
  html : string prop;  (** html *)
}

type private_config

val private_config :
  ca_pool:string prop ->
  is_private:bool prop ->
  unit ->
  private_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_secure_source_manager_instance

val google_secure_source_manager_instance :
  ?id:string prop ->
  ?kms_key:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?private_config:private_config list ->
  ?timeouts:timeouts ->
  instance_id:string prop ->
  location:string prop ->
  unit ->
  google_secure_source_manager_instance

val yojson_of_google_secure_source_manager_instance :
  google_secure_source_manager_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  effective_labels : string Tf_core.assoc prop;
  host_config : host_config list prop;
  id : string prop;
  instance_id : string prop;
  kms_key : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  state_note : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kms_key:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?private_config:private_config list ->
  ?timeouts:timeouts ->
  instance_id:string prop ->
  location:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?kms_key:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?private_config:private_config list ->
  ?timeouts:timeouts ->
  instance_id:string prop ->
  location:string prop ->
  string ->
  t Tf_core.resource
