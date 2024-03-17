(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_labels__metadata
type kubernetes_labels

type t = private {
  api_version : string prop;
  field_manager : string prop;
  force : bool prop;
  id : string prop;
  kind : string prop;
  labels : (string * string) list prop;
}

val kubernetes_labels :
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  api_version:string prop ->
  kind:string prop ->
  labels:(string * string prop) list ->
  metadata:kubernetes_labels__metadata list ->
  string ->
  t
