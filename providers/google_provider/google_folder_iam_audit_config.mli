(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_folder_iam_audit_config__audit_log_config
type google_folder_iam_audit_config

type t = private {
  etag : string prop;
  folder : string prop;
  id : string prop;
  service : string prop;
}

val google_folder_iam_audit_config :
  ?id:string prop ->
  folder:string prop ->
  service:string prop ->
  audit_log_config:
    google_folder_iam_audit_config__audit_log_config list ->
  string ->
  t
