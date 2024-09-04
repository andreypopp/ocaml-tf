(** This resource allows Terraform to manage the labels for a resource that already exists. This resource uses [field management](https://kubernetes.io/docs/reference/using-api/server-side-apply/#field-management) and [server-side apply](https://kubernetes.io/docs/reference/using-api/server-side-apply/) to manage only the labels that are defined in the Terraform configuration. Existing labels not specified in the configuration will be ignored. If a label specified in the config and is already managed by another client it will cause a conflict which can be overridden by setting `force` to true. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  labels:string prop Tf_core.assoc ->
  metadata:metadata list ->
  unit ->
  kubernetes_labels

val yojson_of_kubernetes_labels : kubernetes_labels -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_version : string prop;
  field_manager : string prop;
  force : bool prop;
  id : string prop;
  kind : string prop;
  labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  api_version:string prop ->
  kind:string prop ->
  labels:string prop Tf_core.assoc ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  api_version:string prop ->
  kind:string prop ->
  labels:string prop Tf_core.assoc ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
