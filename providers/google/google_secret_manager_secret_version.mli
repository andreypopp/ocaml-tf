(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_secret_manager_secret_version

val google_secret_manager_secret_version :
  ?deletion_policy:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?is_secret_data_base64:bool prop ->
  ?timeouts:timeouts ->
  secret:string prop ->
  secret_data:string prop ->
  unit ->
  google_secret_manager_secret_version

val yojson_of_google_secret_manager_secret_version :
  google_secret_manager_secret_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  deletion_policy : string prop;
  destroy_time : string prop;
  enabled : bool prop;
  id : string prop;
  is_secret_data_base64 : bool prop;
  name : string prop;
  secret : string prop;
  secret_data : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?deletion_policy:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?is_secret_data_base64:bool prop ->
  ?timeouts:timeouts ->
  secret:string prop ->
  secret_data:string prop ->
  string ->
  t

val make :
  ?deletion_policy:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?is_secret_data_base64:bool prop ->
  ?timeouts:timeouts ->
  secret:string prop ->
  secret_data:string prop ->
  string ->
  t Tf_core.resource
