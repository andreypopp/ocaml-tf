(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type delivery_config

val delivery_config :
  delivery_requirement:string prop -> unit -> delivery_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_pubsub_lite_subscription

val google_pubsub_lite_subscription :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  topic:string prop ->
  delivery_config:delivery_config list ->
  unit ->
  google_pubsub_lite_subscription

val yojson_of_google_pubsub_lite_subscription :
  google_pubsub_lite_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  topic : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  topic:string prop ->
  delivery_config:delivery_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  topic:string prop ->
  delivery_config:delivery_config list ->
  string ->
  t Tf_core.resource
