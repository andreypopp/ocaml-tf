(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type google_data_fusion_instance_iam_policy

val google_data_fusion_instance_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  policy_data:string prop ->
  unit ->
  google_data_fusion_instance_iam_policy

val yojson_of_google_data_fusion_instance_iam_policy :
  google_data_fusion_instance_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  name : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  policy_data:string prop ->
  string ->
  t
