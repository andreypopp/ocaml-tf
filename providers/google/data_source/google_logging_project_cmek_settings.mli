(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_logging_project_cmek_settings

val google_logging_project_cmek_settings :
  ?id:string prop ->
  ?kms_key_name:string prop ->
  project:string prop ->
  unit ->
  google_logging_project_cmek_settings

val yojson_of_google_logging_project_cmek_settings :
  google_logging_project_cmek_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  kms_key_name : string prop;
  kms_key_version_name : string prop;
  name : string prop;
  project : string prop;
  service_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  project:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?kms_key_name:string prop ->
  project:string prop ->
  string ->
  t Tf_core.resource
