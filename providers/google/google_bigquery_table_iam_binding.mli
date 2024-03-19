(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type condition

val condition :
  ?description:string prop ->
  expression:string prop ->
  title:string prop ->
  unit ->
  condition

type google_bigquery_table_iam_binding

val google_bigquery_table_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  dataset_id:string prop ->
  members:string prop list ->
  role:string prop ->
  table_id:string prop ->
  condition:condition list ->
  unit ->
  google_bigquery_table_iam_binding

val yojson_of_google_bigquery_table_iam_binding :
  google_bigquery_table_iam_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dataset_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  table_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  dataset_id:string prop ->
  members:string prop list ->
  role:string prop ->
  table_id:string prop ->
  condition:condition list ->
  string ->
  t
