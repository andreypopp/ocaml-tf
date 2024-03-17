(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_secure_source_manager_instance__private_config
type google_secure_source_manager_instance__timeouts

type google_secure_source_manager_instance__host_config = {
  api : string prop;  (** api *)
  git_http : string prop;  (** git_http *)
  git_ssh : string prop;  (** git_ssh *)
  html : string prop;  (** html *)
}

type google_secure_source_manager_instance

type t = private {
  create_time : string prop;
  effective_labels : (string * string) list prop;
  host_config :
    google_secure_source_manager_instance__host_config list prop;
  id : string prop;
  instance_id : string prop;
  kms_key : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  state_note : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val google_secure_source_manager_instance :
  ?id:string prop ->
  ?kms_key:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_secure_source_manager_instance__timeouts ->
  instance_id:string prop ->
  location:string prop ->
  private_config:
    google_secure_source_manager_instance__private_config list ->
  string ->
  t
