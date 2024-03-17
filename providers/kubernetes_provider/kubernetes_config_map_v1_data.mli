(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_config_map_v1_data__metadata
type kubernetes_config_map_v1_data

val kubernetes_config_map_v1_data :
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  data:(string * string prop) list ->
  metadata:kubernetes_config_map_v1_data__metadata list ->
  string ->
  unit
