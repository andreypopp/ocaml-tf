(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type pubsub_configs

val pubsub_configs :
  ?service_account_email:string prop ->
  message_format:string prop ->
  topic:string prop ->
  unit ->
  pubsub_configs

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_sourcerepo_repository

val google_sourcerepo_repository :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  pubsub_configs:pubsub_configs list ->
  unit ->
  google_sourcerepo_repository

val yojson_of_google_sourcerepo_repository :
  google_sourcerepo_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  project : string prop;
  size : float prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  pubsub_configs:pubsub_configs list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  pubsub_configs:pubsub_configs list ->
  string ->
  t Tf_core.resource
