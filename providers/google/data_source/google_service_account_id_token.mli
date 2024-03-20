(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_service_account_id_token

val google_service_account_id_token :
  ?delegates:string prop list ->
  ?id:string prop ->
  ?include_email:bool prop ->
  ?target_service_account:string prop ->
  target_audience:string prop ->
  unit ->
  google_service_account_id_token

val yojson_of_google_service_account_id_token :
  google_service_account_id_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  delegates : string list prop;
  id : string prop;
  id_token : string prop;
  include_email : bool prop;
  target_audience : string prop;
  target_service_account : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?delegates:string prop list ->
  ?id:string prop ->
  ?include_email:bool prop ->
  ?target_service_account:string prop ->
  target_audience:string prop ->
  string ->
  t

val make :
  ?delegates:string prop list ->
  ?id:string prop ->
  ?include_email:bool prop ->
  ?target_service_account:string prop ->
  target_audience:string prop ->
  string ->
  t Tf_core.resource
