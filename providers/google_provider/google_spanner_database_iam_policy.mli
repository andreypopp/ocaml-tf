(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_spanner_database_iam_policy

type t = private {
  database : string prop;
  etag : string prop;
  id : string prop;
  instance : string prop;
  policy_data : string prop;
  project : string prop;
}

val google_spanner_database_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  database:string prop ->
  instance:string prop ->
  policy_data:string prop ->
  string ->
  t
