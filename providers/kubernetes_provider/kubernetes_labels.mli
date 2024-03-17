(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_labels__metadata
type kubernetes_labels

val kubernetes_labels :
  ?field_manager:string ->
  ?force:bool ->
  api_version:string ->
  kind:string ->
  labels:(string * string) list ->
  metadata:kubernetes_labels__metadata list ->
  string ->
  unit
