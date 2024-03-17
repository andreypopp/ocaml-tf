(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_run_v2_service_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  policy_data : string prop;
  project : string prop;
}

val google_cloud_run_v2_service_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  name:string prop ->
  policy_data:string prop ->
  string ->
  t
