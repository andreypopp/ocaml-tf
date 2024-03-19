(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  unit ->
  metadata

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type kubernetes_namespace

val kubernetes_namespace :
  ?id:string prop ->
  ?wait_for_default_service_account:bool prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  unit ->
  kubernetes_namespace

val yojson_of_kubernetes_namespace : kubernetes_namespace -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
