(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type kubernetes_secret

val kubernetes_secret :
  ?binary_data:(string * string prop) list ->
  ?id:string prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_secret

val yojson_of_kubernetes_secret : kubernetes_secret -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  binary_data : (string * string) list prop;
  data : (string * string) list prop;
  id : string prop;
  immutable : bool prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?binary_data:(string * string prop) list ->
  ?id:string prop ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?binary_data:(string * string prop) list ->
  ?id:string prop ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
