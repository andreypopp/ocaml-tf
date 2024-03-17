(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_annotations__metadata
type kubernetes_annotations

type t = private {
  annotations : (string * string) list prop;
  api_version : string prop;
  field_manager : string prop;
  force : bool prop;
  id : string prop;
  kind : string prop;
  template_annotations : (string * string) list prop;
}

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
  t
