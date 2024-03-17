(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_secure_source_manager_instance__private_config
type google_secure_source_manager_instance__timeouts

type google_secure_source_manager_instance__host_config = {
  api : string;  (** api *)
  git_http : string;  (** git_http *)
  git_ssh : string;  (** git_ssh *)
  html : string;  (** html *)
}

type google_secure_source_manager_instance

val google_secure_source_manager_instance :
  ?id:string ->
  ?kms_key:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?timeouts:google_secure_source_manager_instance__timeouts ->
  instance_id:string ->
  location:string ->
  private_config:
    google_secure_source_manager_instance__private_config list ->
  string ->
  unit
