(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type fields

val fields :
  ?array_config:string prop ->
  ?field_path:string prop ->
  ?order:string prop ->
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
