(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_binary_authorization_attestor_iam_policy

val google_binary_authorization_attestor_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  attestor:string prop ->
  policy_data:string prop ->
  unit ->
  google_binary_authorization_attestor_iam_policy

val yojson_of_google_binary_authorization_attestor_iam_policy :
  google_binary_authorization_attestor_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  attestor : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  attestor:string prop ->
  policy_data:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  attestor:string prop ->
  policy_data:string prop ->
  string ->
  t Tf_core.resource
