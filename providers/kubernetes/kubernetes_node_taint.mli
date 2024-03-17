(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_node_taint__metadata
type kubernetes_node_taint__taint
type kubernetes_node_taint

type t = private {
  field_manager : string prop;
  force : bool prop;
  id : string prop;
}

val kubernetes_node_taint :
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  metadata:kubernetes_node_taint__metadata list ->
  taint:kubernetes_node_taint__taint list ->
  string ->
  t
