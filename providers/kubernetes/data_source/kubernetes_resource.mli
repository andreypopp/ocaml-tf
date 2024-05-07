(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?namespace:string prop -> name:string prop -> unit -> metadata

type kubernetes_resource

val kubernetes_resource :
  ?object_:json prop ->
  api_version:string prop ->
  kind:string prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_resource

val yojson_of_kubernetes_resource : kubernetes_resource -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_version : string prop;
  kind : string prop;
  object_ : json prop;
}

val register :
  ?tf_module:tf_module ->
  ?object_:json prop ->
  api_version:string prop ->
  kind:string prop ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?object_:json prop ->
  api_version:string prop ->
  kind:string prop ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
