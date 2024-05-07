(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_spanner_database_iam_policy

val google_spanner_database_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  database:string prop ->
  instance:string prop ->
  policy_data:string prop ->
  unit ->
  google_spanner_database_iam_policy

val yojson_of_google_spanner_database_iam_policy :
  google_spanner_database_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  database : string prop;
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
  database:string prop ->
  instance:string prop ->
  policy_data:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  database:string prop ->
  instance:string prop ->
  policy_data:string prop ->
  string ->
  t Tf_core.resource
