(** The resource provides mechanisms to inject containers with configuration data while keeping containers agnostic of Kubernetes. Config Map can be used to store fine-grained information like individual properties or coarse-grained information like entire config files or JSON blobs. *)

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

type kubernetes_config_map

val kubernetes_config_map :
  ?binary_data:(string * string prop) list ->
  ?data:(string * string prop) list ->
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
