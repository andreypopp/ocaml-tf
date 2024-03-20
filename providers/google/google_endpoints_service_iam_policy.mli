(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_endpoints_service_iam_policy

val google_endpoints_service_iam_policy :
  ?id:string prop ->
  policy_data:string prop ->
  service_name:string prop ->
  unit ->
  google_endpoints_service_iam_policy

val yojson_of_google_endpoints_service_iam_policy :
  google_endpoints_service_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  service_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  policy_data:string prop ->
  service_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  policy_data:string prop ->
  service_name:string prop ->
  string ->
  t Tf_core.resource
