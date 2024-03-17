(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_node_taint__metadata
type kubernetes_node_taint__taint
type kubernetes_node_taint

val kubernetes_node_taint :
  ?field_manager:string ->
  ?force:bool ->
  metadata:kubernetes_node_taint__metadata list ->
  taint:kubernetes_node_taint__taint list ->
  string ->
  unit
