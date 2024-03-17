(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_autoscaling_policy_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  policy_id : string prop;
  project : string prop;
}

val google_dataproc_autoscaling_policy_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  policy_data:string prop ->
  policy_id:string prop ->
  string ->
  t
