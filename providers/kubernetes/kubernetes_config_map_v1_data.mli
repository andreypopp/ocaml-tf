(** This resource allows Terraform to manage data within a pre-existing ConfigMap. This resource uses [field management](https://kubernetes.io/docs/reference/using-api/server-side-apply/#field-management) and [server-side apply](https://kubernetes.io/docs/reference/using-api/server-side-apply/) to manage only the data that is defined in the Terraform configuration. Existing data not specified in the configuration will be ignored. If data specified in the config and is already managed by another client it will cause a conflict which can be overridden by setting `force` to true. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?namespace:string prop -> name:string prop -> unit -> metadata

type kubernetes_config_map_v1_data

val kubernetes_config_map_v1_data :
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  data:string prop Tf_core.assoc ->
  metadata:metadata list ->
  unit ->
  kubernetes_config_map_v1_data

val yojson_of_kubernetes_config_map_v1_data :
  kubernetes_config_map_v1_data -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  data : string Tf_core.assoc prop;
  field_manager : string prop;
  force : bool prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  data:string prop Tf_core.assoc ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  data:string prop Tf_core.assoc ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
