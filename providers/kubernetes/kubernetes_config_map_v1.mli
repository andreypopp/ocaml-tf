(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type kubernetes_config_map_v1

val kubernetes_config_map_v1 :
  ?binary_data:(string * string prop) list ->
  ?data:(string * string prop) list ->
  ?id:string prop ->
  ?immutable:bool prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_config_map_v1

val yojson_of_kubernetes_config_map_v1 :
  kubernetes_config_map_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  binary_data : (string * string) list prop;
  data : (string * string) list prop;
  id : string prop;
  immutable : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?binary_data:(string * string prop) list ->
  ?data:(string * string prop) list ->
  ?id:string prop ->
  ?immutable:bool prop ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?binary_data:(string * string prop) list ->
  ?data:(string * string prop) list ->
  ?id:string prop ->
  ?immutable:bool prop ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
