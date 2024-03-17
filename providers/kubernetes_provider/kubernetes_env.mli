(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_env__env__value_from__config_map_key_ref
type kubernetes_env__env__value_from__field_ref
type kubernetes_env__env__value_from__resource_field_ref
type kubernetes_env__env__value_from__secret_key_ref
type kubernetes_env__env__value_from
type kubernetes_env__env
type kubernetes_env__metadata
type kubernetes_env

val kubernetes_env :
  ?container:string prop ->
  ?field_manager:string prop ->
  ?force:bool prop ->
  ?id:string prop ->
  ?init_container:string prop ->
  api_version:string prop ->
  kind:string prop ->
  env:kubernetes_env__env list ->
  metadata:kubernetes_env__metadata list ->
  string ->
  unit
