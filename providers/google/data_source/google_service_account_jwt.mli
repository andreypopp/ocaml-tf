(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_service_account_jwt

val google_service_account_jwt :
  ?delegates:string prop list ->
  ?expires_in:float prop ->
  ?id:string prop ->
  payload:string prop ->
  target_service_account:string prop ->
  unit ->
  google_service_account_jwt

val yojson_of_google_service_account_jwt :
  google_service_account_jwt -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  delegates : string list prop;
  expires_in : float prop;
  id : string prop;
  jwt : string prop;
  payload : string prop;
  target_service_account : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?delegates:string prop list ->
  ?expires_in:float prop ->
  ?id:string prop ->
  payload:string prop ->
  target_service_account:string prop ->
  string ->
  t

val make :
  ?delegates:string prop list ->
  ?expires_in:float prop ->
  ?id:string prop ->
  payload:string prop ->
  target_service_account:string prop ->
  string ->
  t Tf_core.resource
