(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_annotations__metadata
type kubernetes_annotations

val kubernetes_annotations :
  ?annotations:(string * string) list ->
  ?field_manager:string ->
  ?force:bool ->
  ?template_annotations:(string * string) list ->
  api_version:string ->
  kind:string ->
  metadata:kubernetes_annotations__metadata list ->
  string ->
  unit
