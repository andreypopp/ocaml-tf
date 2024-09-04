(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:string prop Tf_core.assoc ->
  ?generate_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type kubernetes_secret_v1

val kubernetes_secret_v1 :
  ?binary_data:string prop Tf_core.assoc ->
  ?id:string prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_secret_v1

val yojson_of_kubernetes_secret_v1 : kubernetes_secret_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  binary_data : string Tf_core.assoc prop;
  data : string Tf_core.assoc prop;
  id : string prop;
  immutable : bool prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?binary_data:string prop Tf_core.assoc ->
  ?id:string prop ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?binary_data:string prop Tf_core.assoc ->
  ?id:string prop ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
