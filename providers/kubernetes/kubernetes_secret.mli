(** The resource provides mechanisms to inject containers with sensitive information, such as passwords, while keeping containers agnostic of Kubernetes. Secrets can be used to store sensitive information either as individual properties or coarse-grained entries like entire files or JSON blobs. The resource will by default create a secret which is available to any pod in the specified (or default) namespace. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:string prop Tf_core.assoc ->
  ?generate_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type kubernetes_secret

val kubernetes_secret :
  ?binary_data:string prop Tf_core.assoc ->
  ?data:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?immutable:bool prop ->
  ?type_:string prop ->
  ?wait_for_service_account_token:bool prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  unit ->
  kubernetes_secret

val yojson_of_kubernetes_secret : kubernetes_secret -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  binary_data : string Tf_core.assoc prop;
  data : string Tf_core.assoc prop;
  id : string prop;
  immutable : bool prop;
  type_ : string prop;
  wait_for_service_account_token : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?binary_data:string prop Tf_core.assoc ->
  ?data:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?immutable:bool prop ->
  ?type_:string prop ->
  ?wait_for_service_account_token:bool prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?binary_data:string prop Tf_core.assoc ->
  ?data:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?immutable:bool prop ->
  ?type_:string prop ->
  ?wait_for_service_account_token:bool prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
