(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_pubsub_schema_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  schema : string prop;
}

val google_pubsub_schema_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  policy_data:string prop ->
  schema:string prop ->
  string ->
  t
