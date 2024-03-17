(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_config_map__metadata
type kubernetes_config_map

val kubernetes_config_map :
  ?binary_data:(string * string prop) list ->
  ?data:(string * string prop) list ->
  ?id:string prop ->
  ?immutable:bool prop ->
  metadata:kubernetes_config_map__metadata list ->
  string ->
  unit
