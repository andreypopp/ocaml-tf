(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_service_account_key

val google_service_account_key :
  ?id:string prop ->
  ?project:string prop ->
  ?public_key_type:string prop ->
  name:string prop ->
  unit ->
  google_service_account_key

val yojson_of_google_service_account_key :
  google_service_account_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  key_algorithm : string prop;
  name : string prop;
  project : string prop;
  public_key : string prop;
  public_key_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?public_key_type:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?public_key_type:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
