(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_pubsub_schema

val google_pubsub_schema :
  ?definition:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_pubsub_schema

val yojson_of_google_pubsub_schema : google_pubsub_schema -> json

(** RESOURCE REGISTRATION *)

type t = private {
  definition : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?definition:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t
