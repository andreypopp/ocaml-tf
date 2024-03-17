(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_endpoints_service_consumers_iam_policy

type t = private {
  consumer_project : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  service_name : string prop;
}

val google_endpoints_service_consumers_iam_policy :
  ?id:string prop ->
  consumer_project:string prop ->
  policy_data:string prop ->
  service_name:string prop ->
  string ->
  t
