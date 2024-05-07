(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_service_account_access_token

val google_service_account_access_token :
  ?delegates:string prop list ->
  ?id:string prop ->
  ?lifetime:string prop ->
  scopes:string prop list ->
  target_service_account:string prop ->
  unit ->
  google_service_account_access_token

val yojson_of_google_service_account_access_token :
  google_service_account_access_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_token : string prop;
  delegates : string list prop;
  id : string prop;
  lifetime : string prop;
  scopes : string list prop;
  target_service_account : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?delegates:string prop list ->
  ?id:string prop ->
  ?lifetime:string prop ->
  scopes:string prop list ->
  target_service_account:string prop ->
  string ->
  t

val make :
  ?delegates:string prop list ->
  ?id:string prop ->
  ?lifetime:string prop ->
  scopes:string prop list ->
  target_service_account:string prop ->
  string ->
  t Tf_core.resource
