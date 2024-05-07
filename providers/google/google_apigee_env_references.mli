(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_apigee_env_references

val google_apigee_env_references :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  env_id:string prop ->
  name:string prop ->
  refers:string prop ->
  resource_type:string prop ->
  unit ->
  google_apigee_env_references

val yojson_of_google_apigee_env_references :
  google_apigee_env_references -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  env_id : string prop;
  id : string prop;
  name : string prop;
  refers : string prop;
  resource_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  env_id:string prop ->
  name:string prop ->
  refers:string prop ->
  resource_type:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  env_id:string prop ->
  name:string prop ->
  refers:string prop ->
  resource_type:string prop ->
  string ->
  t Tf_core.resource
