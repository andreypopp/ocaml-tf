(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigtable_instance_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  instance : string prop;
  policy_data : string prop;
  project : string prop;
}

val google_bigtable_instance_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  policy_data:string prop ->
  string ->
  t
