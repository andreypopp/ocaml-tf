(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_config_map_v1__metadata
type kubernetes_config_map_v1

val kubernetes_config_map_v1 :
  ?binary_data:(string * string) list ->
  ?data:(string * string) list ->
  ?immutable:bool ->
  metadata:kubernetes_config_map_v1__metadata list ->
  string ->
  unit
