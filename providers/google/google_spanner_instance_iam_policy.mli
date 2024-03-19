(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type google_spanner_instance_iam_policy

val google_spanner_instance_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  policy_data:string prop ->
  unit ->
  google_spanner_instance_iam_policy

val yojson_of_google_spanner_instance_iam_policy :
  google_spanner_instance_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  instance : string prop;
  policy_data : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  policy_data:string prop ->
  string ->
  t
