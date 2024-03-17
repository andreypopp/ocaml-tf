(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_job_iam_member__condition
type google_dataproc_job_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  job_id : string prop;
  member : string prop;
  project : string prop;
  region : string prop;
  role : string prop;
}

val google_dataproc_job_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  job_id:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_dataproc_job_iam_member__condition list ->
  string ->
  t
