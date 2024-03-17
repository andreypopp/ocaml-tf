(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_annotations__metadata
type kubernetes_annotations

val kubernetes_annotations :
  ?annotations:(string * string prop) list ->
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  ?template_annotations:(string * string prop) list ->
  api_version:string prop ->
  kind:string prop ->
  metadata:kubernetes_annotations__metadata list ->
  string ->
  unit
