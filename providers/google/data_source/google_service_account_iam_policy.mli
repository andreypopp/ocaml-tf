(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_service_account_iam_policy

val google_service_account_iam_policy :
  ?id:string prop ->
  service_account_id:string prop ->
  unit ->
  google_service_account_iam_policy

val yojson_of_google_service_account_iam_policy :
  google_service_account_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  service_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  service_account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  service_account_id:string prop ->
  string ->
  t Tf_core.resource
