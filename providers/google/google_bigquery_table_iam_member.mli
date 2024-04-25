(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type condition

val condition :
  ?description:string prop ->
  expression:string prop ->
  title:string prop ->
  unit ->
  condition

type google_bigquery_table_iam_member

val google_bigquery_table_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  dataset_id:string prop ->
  member:string prop ->
  role:string prop ->
  table_id:string prop ->
  unit ->
  google_bigquery_table_iam_member

val yojson_of_google_bigquery_table_iam_member :
  google_bigquery_table_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dataset_id : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
  table_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  dataset_id:string prop ->
  member:string prop ->
  role:string prop ->
  table_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  dataset_id:string prop ->
  member:string prop ->
  role:string prop ->
  table_id:string prop ->
  string ->
  t Tf_core.resource
