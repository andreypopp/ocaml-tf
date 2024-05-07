(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type index_config__indexes

val index_config__indexes :
  ?array_config:string prop ->
  ?order:string prop ->
  ?query_scope:string prop ->
  unit ->
  index_config__indexes

type index_config

val index_config :
  indexes:index_config__indexes list -> unit -> index_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type ttl_config

val ttl_config : unit -> ttl_config

type google_firestore_field

val google_firestore_field :
  ?database:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?index_config:index_config list ->
  ?timeouts:timeouts ->
  ?ttl_config:ttl_config list ->
  collection:string prop ->
  field:string prop ->
  unit ->
  google_firestore_field

val yojson_of_google_firestore_field : google_firestore_field -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  collection : string prop;
  database : string prop;
  field : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?database:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?index_config:index_config list ->
  ?timeouts:timeouts ->
  ?ttl_config:ttl_config list ->
  collection:string prop ->
  field:string prop ->
  string ->
  t

val make :
  ?database:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?index_config:index_config list ->
  ?timeouts:timeouts ->
  ?ttl_config:ttl_config list ->
  collection:string prop ->
  field:string prop ->
  string ->
  t Tf_core.resource
