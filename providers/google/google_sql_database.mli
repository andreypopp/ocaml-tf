(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_sql_database

val google_sql_database :
  ?charset:string prop ->
  ?collation:string prop ->
  ?deletion_policy:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
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
  ?charset:string prop ->
  ?collation:string prop ->
  ?deletion_policy:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  instance:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?charset:string prop ->
  ?collation:string prop ->
  ?deletion_policy:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  instance:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
