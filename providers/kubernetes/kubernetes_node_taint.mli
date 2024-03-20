(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata : name:string prop -> unit -> metadata

type taint

val taint :
  effect:string prop ->
  key:string prop ->
  value:string prop ->
  unit ->
  taint

type kubernetes_node_taint

val kubernetes_node_taint :
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  metadata:metadata list ->
  taint:taint list ->
  unit ->
  kubernetes_node_taint

val yojson_of_kubernetes_node_taint : kubernetes_node_taint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  field_manager : string prop;
  force : bool prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  metadata:metadata list ->
  taint:taint list ->
  string ->
  t

val make :
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  metadata:metadata list ->
  taint:taint list ->
  string ->
  t Tf_core.resource
