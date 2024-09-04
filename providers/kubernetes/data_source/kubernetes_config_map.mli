(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:string prop Tf_core.assoc ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type kubernetes_config_map

val kubernetes_config_map :
  ?id:string prop ->
  ?immutable:bool prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_config_map

val yojson_of_kubernetes_config_map : kubernetes_config_map -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  binary_data : string Tf_core.assoc prop;
  data : string Tf_core.assoc prop;
  id : string prop;
  immutable : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?immutable:bool prop ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?immutable:bool prop ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
