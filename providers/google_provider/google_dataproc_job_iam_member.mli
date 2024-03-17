(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_job_iam_member__condition
type google_dataproc_job_iam_member

val google_dataproc_job_iam_member :
  ?id:string ->
  ?project:string ->
  ?region:string ->
  job_id:string ->
  member:string ->
  role:string ->
  condition:google_dataproc_job_iam_member__condition list ->
  string ->
  unit
