(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_job_iam_binding__condition
type google_dataproc_job_iam_binding

val google_dataproc_job_iam_binding :
  job_id:string ->
  members:string list ->
  role:string ->
  condition:google_dataproc_job_iam_binding__condition list ->
  string ->
  unit
