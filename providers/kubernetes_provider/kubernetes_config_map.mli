(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_config_map__metadata
type kubernetes_config_map

val kubernetes_config_map :
  ?binary_data:(string * string) list ->
  ?data:(string * string) list ->
  ?immutable:bool ->
  metadata:kubernetes_config_map__metadata list ->
  string ->
  unit
