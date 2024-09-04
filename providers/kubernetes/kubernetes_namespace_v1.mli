(** Kubernetes supports multiple virtual clusters backed by the same physical cluster. These virtual clusters are called namespaces. Read more about namespaces at [Kubernetes reference](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/) *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:string prop Tf_core.assoc ->
  ?generate_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  unit ->
  metadata

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type kubernetes_namespace_v1

val kubernetes_namespace_v1 :
  ?id:string prop ->
  ?wait_for_default_service_account:bool prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  unit ->
  kubernetes_namespace_v1

val yojson_of_kubernetes_namespace_v1 :
  kubernetes_namespace_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  wait_for_default_service_account : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?wait_for_default_service_account:bool prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?wait_for_default_service_account:bool prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
