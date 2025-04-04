(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type fields__vector_config__flat

val fields__vector_config__flat : unit -> fields__vector_config__flat

type fields__vector_config

val fields__vector_config :
  ?dimension:float prop ->
  ?flat:fields__vector_config__flat list ->
  unit ->
  fields__vector_config

type fields

val fields :
  ?array_config:string prop ->
  ?field_path:string prop ->
  ?order:string prop ->
  ?vector_config:fields__vector_config list ->
  unit ->
  fields

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_firestore_index

val google_firestore_index :
  ?api_scope:string prop ->
  ?database:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?query_scope:string prop ->
  ?timeouts:timeouts ->
  collection:string prop ->
  fields:fields list ->
  unit ->
  google_firestore_index

val yojson_of_google_firestore_index : google_firestore_index -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_scope : string prop;
  collection : string prop;
  database : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  query_scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?api_scope:string prop ->
  ?database:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?query_scope:string prop ->
  ?timeouts:timeouts ->
  collection:string prop ->
  fields:fields list ->
  string ->
  t

val make :
  ?api_scope:string prop ->
  ?database:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?query_scope:string prop ->
  ?timeouts:timeouts ->
  collection:string prop ->
  fields:fields list ->
  string ->
  t Tf_core.resource
