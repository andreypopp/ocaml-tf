(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_job_iam_binding__condition
type google_dataproc_job_iam_binding

val google_dataproc_job_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  job_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_dataproc_job_iam_binding__condition list ->
  string ->
  unit
