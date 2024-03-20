(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_kms_key_ring_iam_policy

val google_kms_key_ring_iam_policy :
  ?id:string prop ->
  key_ring_id:string prop ->
  policy_data:string prop ->
  unit ->
  google_kms_key_ring_iam_policy

val yojson_of_google_kms_key_ring_iam_policy :
  google_kms_key_ring_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  key_ring_id : string prop;
  policy_data : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  key_ring_id:string prop ->
  policy_data:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  key_ring_id:string prop ->
  policy_data:string prop ->
  string ->
  t Tf_core.resource
