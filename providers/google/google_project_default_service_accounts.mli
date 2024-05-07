(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type google_project_default_service_accounts

val google_project_default_service_accounts :
  ?id:string prop ->
  ?restore_policy:string prop ->
  ?timeouts:timeouts ->
  action:string prop ->
  project:string prop ->
  unit ->
  google_project_default_service_accounts

val yojson_of_google_project_default_service_accounts :
  google_project_default_service_accounts -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  action : string prop;
  id : string prop;
  project : string prop;
  restore_policy : string prop;
  service_accounts : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?restore_policy:string prop ->
  ?timeouts:timeouts ->
  action:string prop ->
  project:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?restore_policy:string prop ->
  ?timeouts:timeouts ->
  action:string prop ->
  project:string prop ->
  string ->
  t Tf_core.resource
