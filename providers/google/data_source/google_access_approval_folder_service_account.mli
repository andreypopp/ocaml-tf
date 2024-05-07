(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_access_approval_folder_service_account

val google_access_approval_folder_service_account :
  ?id:string prop ->
  folder_id:string prop ->
  unit ->
  google_access_approval_folder_service_account

val yojson_of_google_access_approval_folder_service_account :
  google_access_approval_folder_service_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_email : string prop;
  folder_id : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  folder_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  folder_id:string prop ->
  string ->
  t Tf_core.resource
