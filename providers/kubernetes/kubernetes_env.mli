(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type env__value_from__config_map_key_ref

val env__value_from__config_map_key_ref :
  ?key:string prop ->
  ?name:string prop ->
  ?optional:bool prop ->
  unit ->
  env__value_from__config_map_key_ref

type env__value_from__field_ref

val env__value_from__field_ref :
  ?api_version:string prop ->
  ?field_path:string prop ->
  unit ->
  env__value_from__field_ref

type env__value_from__resource_field_ref

val env__value_from__resource_field_ref :
  ?container_name:string prop ->
  ?divisor:string prop ->
  resource:string prop ->
  unit ->
  env__value_from__resource_field_ref

type env__value_from__secret_key_ref

val env__value_from__secret_key_ref :
  ?key:string prop ->
  ?name:string prop ->
  ?optional:bool prop ->
  unit ->
  env__value_from__secret_key_ref

type env__value_from

val env__value_from :
  ?config_map_key_ref:env__value_from__config_map_key_ref list ->
  ?field_ref:env__value_from__field_ref list ->
  ?resource_field_ref:env__value_from__resource_field_ref list ->
  ?secret_key_ref:env__value_from__secret_key_ref list ->
  unit ->
  env__value_from

type env

val env :
  ?value:string prop ->
  ?value_from:env__value_from list ->
  name:string prop ->
  unit ->
  env

type metadata

val metadata :
  ?namespace:string prop -> name:string prop -> unit -> metadata

type kubernetes_env

val kubernetes_env :
  ?container:string prop ->
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  ?init_container:string prop ->
  api_version:string prop ->
  kind:string prop ->
  env:env list ->
  metadata:metadata list ->
  unit ->
  kubernetes_env

val yojson_of_kubernetes_env : kubernetes_env -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_version : string prop;
  container : string prop;
  field_manager : string prop;
  force : bool prop;
  id : string prop;
  init_container : string prop;
  kind : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?container:string prop ->
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  ?init_container:string prop ->
  api_version:string prop ->
  kind:string prop ->
  env:env list ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?container:string prop ->
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  ?init_container:string prop ->
  api_version:string prop ->
  kind:string prop ->
  env:env list ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
