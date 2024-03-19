(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?namespace:string prop -> name:string prop -> unit -> metadata

type kubernetes_annotations

val kubernetes_annotations :
  ?annotations:(string * string prop) list ->
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  ?template_annotations:(string * string prop) list ->
  api_version:string prop ->
  kind:string prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_annotations

val yojson_of_kubernetes_annotations : kubernetes_annotations -> json

(** RESOURCE REGISTRATION *)

type t = private {
  annotations : (string * string) list prop;
  api_version : string prop;
  field_manager : string prop;
  force : bool prop;
  id : string prop;
  kind : string prop;
  template_annotations : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:(string * string prop) list ->
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  ?template_annotations:(string * string prop) list ->
  api_version:string prop ->
  kind:string prop ->
  metadata:metadata list ->
  string ->
  t
