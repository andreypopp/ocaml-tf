(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_data_catalog_policy_tag_iam_policy

val google_data_catalog_policy_tag_iam_policy :
  ?id:string prop ->
  policy_tag:string prop ->
  unit ->
  google_data_catalog_policy_tag_iam_policy

val yojson_of_google_data_catalog_policy_tag_iam_policy :
  google_data_catalog_policy_tag_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  policy_tag : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  policy_tag:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  policy_tag:string prop ->
  string ->
  t Tf_core.resource
