(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vhost

val vhost : configure:string prop -> host:string prop -> read:string prop -> write:string prop -> unit -> vhost

type vhost_topic__vhost

val vhost_topic__vhost : read:string prop -> topic:string prop -> write:string prop -> unit -> vhost_topic__vhost

type vhost_topic

val vhost_topic : ?vhost:vhost_topic__vhost list -> host:string prop -> unit -> vhost_topic

type vault_rabbitmq_secret_backend_role

val vault_rabbitmq_secret_backend_role :
  ?id:string prop ->
  ?namespace:string prop ->
  ?tags:string prop ->
  ?vhost:vhost list ->
  ?vhost_topic:vhost_topic list ->
  backend:string prop ->
  name:string prop ->
  unit ->
  vault_rabbitmq_secret_backend_role

val yojson_of_vault_rabbitmq_secret_backend_role : vault_rabbitmq_secret_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  tags : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?tags:string prop ->
  ?vhost:vhost list ->
  ?vhost_topic:vhost_topic list ->
  backend:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  ?tags:string prop ->
  ?vhost:vhost list ->
  ?vhost_topic:vhost_topic list ->
  backend:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
