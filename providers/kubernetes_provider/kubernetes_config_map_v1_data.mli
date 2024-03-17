(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_config_map_v1_data__metadata
type kubernetes_config_map_v1_data

val kubernetes_config_map_v1_data :
  ?field_manager:string ->
  ?force:bool ->
  data:(string * string) list ->
  metadata:kubernetes_config_map_v1_data__metadata list ->
  string ->
  unit
