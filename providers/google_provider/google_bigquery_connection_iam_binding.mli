(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_connection_iam_binding__condition
type google_bigquery_connection_iam_binding

type t = private {
  connection_id : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
}

val google_bigquery_connection_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  connection_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_bigquery_connection_iam_binding__condition list ->
  string ->
  t
