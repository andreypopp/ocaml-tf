(** This resource allows Terraform to manage the annotations for a resource that already exists. This resource uses [field management](https://kubernetes.io/docs/reference/using-api/server-side-apply/#field-management) and [server-side apply](https://kubernetes.io/docs/reference/using-api/server-side-apply/) to manage only the annotations that are defined in the Terraform configuration. Existing annotations not specified in the configuration will be ignored. If an annotation specified in the config and is already managed by another client it will cause a conflict which can be overridden by setting `force` to true. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?namespace:string prop -> name:string prop -> unit -> metadata

type kubernetes_annotations

val kubernetes_annotations :
  ?annotations:string prop Tf_core.assoc ->
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  ?template_annotations:string prop Tf_core.assoc ->
  api_version:string prop ->
  kind:string prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_annotations

val yojson_of_kubernetes_annotations : kubernetes_annotations -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  api_version : string prop;
  field_manager : string prop;
  force : bool prop;
  id : string prop;
  kind : string prop;
  template_annotations : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:string prop Tf_core.assoc ->
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  ?template_annotations:string prop Tf_core.assoc ->
  api_version:string prop ->
  kind:string prop ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?annotations:string prop Tf_core.assoc ->
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  ?template_annotations:string prop Tf_core.assoc ->
  api_version:string prop ->
  kind:string prop ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
