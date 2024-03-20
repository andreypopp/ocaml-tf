(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_logging_project_settings

val google_logging_project_settings :
  ?id:string prop ->
  project:string prop ->
  unit ->
  google_logging_project_settings

val yojson_of_google_logging_project_settings :
  google_logging_project_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  disable_default_sink : bool prop;
  id : string prop;
  kms_key_name : string prop;
  kms_service_account_id : string prop;
  logging_service_account_id : string prop;
  name : string prop;
  project : string prop;
  storage_location : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  project:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  project:string prop ->
  string ->
  t Tf_core.resource
