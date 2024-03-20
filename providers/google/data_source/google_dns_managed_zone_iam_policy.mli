(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_dns_managed_zone_iam_policy

val google_dns_managed_zone_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  managed_zone:string prop ->
  unit ->
  google_dns_managed_zone_iam_policy

val yojson_of_google_dns_managed_zone_iam_policy :
  google_dns_managed_zone_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  managed_zone : string prop;
  policy_data : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  managed_zone:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  managed_zone:string prop ->
  string ->
  t Tf_core.resource
