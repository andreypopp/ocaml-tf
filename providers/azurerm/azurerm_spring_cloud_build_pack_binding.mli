(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type launch

val launch :
  ?properties:(string * string prop) list ->
  ?secrets:(string * string prop) list ->
  unit ->
  launch

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_spring_cloud_build_pack_binding

val azurerm_spring_cloud_build_pack_binding :
  ?binding_type:string prop ->
  ?id:string prop ->
  ?launch:launch list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_builder_id:string prop ->
  unit ->
  azurerm_spring_cloud_build_pack_binding

val yojson_of_azurerm_spring_cloud_build_pack_binding :
  azurerm_spring_cloud_build_pack_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  binding_type : string prop;
  id : string prop;
  name : string prop;
  spring_cloud_builder_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?binding_type:string prop ->
  ?id:string prop ->
  ?launch:launch list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_builder_id:string prop ->
  string ->
  t

val make :
  ?binding_type:string prop ->
  ?id:string prop ->
  ?launch:launch list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_builder_id:string prop ->
  string ->
  t Tf_core.resource
