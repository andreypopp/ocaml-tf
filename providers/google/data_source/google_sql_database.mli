(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_sql_database

val google_sql_database :
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  name:string prop ->
  unit ->
  google_sql_database

val yojson_of_google_sql_database : google_sql_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  charset : string prop;
  collation : string prop;
  deletion_policy : string prop;
  id : string prop;
  instance : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
