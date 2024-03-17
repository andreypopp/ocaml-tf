(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dns_managed_zone_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  managed_zone : string prop;
  policy_data : string prop;
  project : string prop;
}

val google_dns_managed_zone_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  managed_zone:string prop ->
  policy_data:string prop ->
  string ->
  t
