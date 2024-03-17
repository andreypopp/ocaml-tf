(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_project_iam_audit_config__audit_log_config
type google_project_iam_audit_config

type t = private {
  etag : string prop;
  id : string prop;
  project : string prop;
  service : string prop;
}

val google_project_iam_audit_config :
  ?id:string prop ->
  project:string prop ->
  service:string prop ->
  audit_log_config:
    google_project_iam_audit_config__audit_log_config list ->
  string ->
  t
