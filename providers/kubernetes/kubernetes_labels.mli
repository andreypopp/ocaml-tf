(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?namespace:string prop -> name:string prop -> unit -> metadata

type kubernetes_labels

val kubernetes_labels :
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  api_version:string prop ->
  kind:string prop ->
  labels:(string * string prop) list ->
  metadata:metadata list ->
  unit ->
  kubernetes_labels

val yojson_of_kubernetes_labels : kubernetes_labels -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_version : string prop;
  field_manager : string prop;
  force : bool prop;
  id : string prop;
  kind : string prop;
  labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  api_version:string prop ->
  kind:string prop ->
  labels:(string * string prop) list ->
  metadata:metadata list ->
  string ->
  t
