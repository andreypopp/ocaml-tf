(** A service account provides an identity for processes that run in a Pod. Read more at [Kubernetes reference](https://kubernetes.io/docs/reference/access-authn-authz/service-accounts-admin/) *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type image_pull_secret

val image_pull_secret :
  ?name:string prop -> unit -> image_pull_secret

type metadata

val metadata :
  ?annotations:string prop Tf_core.assoc ->
  ?generate_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type secret

val secret : ?name:string prop -> unit -> secret

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type kubernetes_service_account

val kubernetes_service_account :
  ?automount_service_account_token:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  image_pull_secret:image_pull_secret list ->
  metadata:metadata list ->
  secret:secret list ->
  unit ->
  kubernetes_service_account

val yojson_of_kubernetes_service_account :
  kubernetes_service_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
