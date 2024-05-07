(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type properties

val properties :
  direction:string prop -> name:string prop -> unit -> properties

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_datastore_index

val google_datastore_index :
  ?ancestor:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?properties:properties list ->
  ?timeouts:timeouts ->
  kind:string prop ->
  unit ->
  google_datastore_index

val yojson_of_google_datastore_index : google_datastore_index -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  ancestor : string prop;
  id : string prop;
  index_id : string prop;
  kind : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?ancestor:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?properties:properties list ->
  ?timeouts:timeouts ->
  kind:string prop ->
  string ->
  t

val make :
  ?ancestor:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?properties:properties list ->
  ?timeouts:timeouts ->
  kind:string prop ->
  string ->
  t Tf_core.resource
