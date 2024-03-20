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

type google_bigtable_table_iam_member

val google_bigtable_table_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  member:string prop ->
  role:string prop ->
  table:string prop ->
  condition:condition list ->
  unit ->
  google_bigtable_table_iam_member

val yojson_of_google_bigtable_table_iam_member :
  google_bigtable_table_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  instance : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
  table : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  member:string prop ->
  role:string prop ->
  table:string prop ->
  condition:condition list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  member:string prop ->
  role:string prop ->
  table:string prop ->
  condition:condition list ->
  string ->
  t Tf_core.resource
