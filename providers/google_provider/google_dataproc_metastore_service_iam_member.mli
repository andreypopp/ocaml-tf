(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_metastore_service_iam_member__condition
type google_dataproc_metastore_service_iam_member

val google_dataproc_metastore_service_iam_member :
  member:string ->
  role:string ->
  service_id:string ->
  condition:
    google_dataproc_metastore_service_iam_member__condition list ->
  string ->
  unit
