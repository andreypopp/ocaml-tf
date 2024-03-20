(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type audit_log_config

val audit_log_config :
  ?exempted_members:string prop list ->
  log_type:string prop ->
  unit ->
  audit_log_config

type google_folder_iam_audit_config

val google_folder_iam_audit_config :
  ?id:string prop ->
  folder:string prop ->
  service:string prop ->
  audit_log_config:audit_log_config list ->
  unit ->
  google_folder_iam_audit_config

val yojson_of_google_folder_iam_audit_config :
  google_folder_iam_audit_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  folder : string prop;
  id : string prop;
  service : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  folder:string prop ->
  service:string prop ->
  audit_log_config:audit_log_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  folder:string prop ->
  service:string prop ->
  audit_log_config:audit_log_config list ->
  string ->
  t Tf_core.resource
