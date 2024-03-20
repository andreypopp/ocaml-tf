(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type image_pull_secret

val image_pull_secret :
  ?name:string prop -> unit -> image_pull_secret

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type secret

val secret : ?name:string prop -> unit -> secret

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type kubernetes_default_service_account_v1

val kubernetes_default_service_account_v1 :
  ?automount_service_account_token:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  image_pull_secret:image_pull_secret list ->
  metadata:metadata list ->
  secret:secret list ->
  unit ->
  kubernetes_default_service_account_v1

val yojson_of_kubernetes_default_service_account_v1 :
  kubernetes_default_service_account_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  automount_service_account_token : bool prop;
  default_secret_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?automount_service_account_token:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  image_pull_secret:image_pull_secret list ->
  metadata:metadata list ->
  secret:secret list ->
  string ->
  t

val make :
  ?automount_service_account_token:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  image_pull_secret:image_pull_secret list ->
  metadata:metadata list ->
  secret:secret list ->
  string ->
  t Tf_core.resource
