(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec = {
  finalizers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** finalizers *)
}

type metadata

val metadata :
  ?annotations:string prop Tf_core.assoc ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  unit ->
  metadata

type kubernetes_namespace_v1

val kubernetes_namespace_v1 :
  ?id:string prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_namespace_v1

val yojson_of_kubernetes_namespace_v1 :
  kubernetes_namespace_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  spec : spec list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?id:string prop ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
