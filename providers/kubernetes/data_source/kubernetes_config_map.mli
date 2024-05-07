(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?labels:(string * string prop) list ->
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
  binary_data : (string * string) list prop;
  data : (string * string) list prop;
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
