(** A runtime class is used to determine which container runtime is used to run all containers in a pod. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:string prop Tf_core.assoc ->
  ?generate_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  unit ->
  metadata

type kubernetes_runtime_class_v1

val kubernetes_runtime_class_v1 :
  ?id:string prop ->
  handler:string prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_runtime_class_v1

val yojson_of_kubernetes_runtime_class_v1 :
  kubernetes_runtime_class_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  handler : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  handler:string prop ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?id:string prop ->
  handler:string prop ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
