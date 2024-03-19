(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?namespace:string prop -> name:string prop -> unit -> metadata

type kubernetes_config_map_v1_data

val kubernetes_config_map_v1_data :
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  data:(string * string prop) list ->
  metadata:metadata list ->
  unit ->
  kubernetes_config_map_v1_data

val yojson_of_kubernetes_config_map_v1_data :
  kubernetes_config_map_v1_data -> json

(** RESOURCE REGISTRATION *)

type t = private {
  data : (string * string) list prop;
  field_manager : string prop;
  force : bool prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  data:(string * string prop) list ->
  metadata:metadata list ->
  string ->
  t
