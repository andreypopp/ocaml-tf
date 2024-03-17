(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_metastore_service_iam_binding__condition
type google_dataproc_metastore_service_iam_binding

val google_dataproc_metastore_service_iam_binding :
  members:string list ->
  role:string ->
  service_id:string ->
  condition:
    google_dataproc_metastore_service_iam_binding__condition list ->
  string ->
  unit
