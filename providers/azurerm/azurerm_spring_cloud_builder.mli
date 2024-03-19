(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type build_pack_group

val build_pack_group :
  ?build_pack_ids:string prop list ->
  name:string prop ->
  unit ->
  build_pack_group

type stack

val stack : id:string prop -> version:string prop -> unit -> stack

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_spring_cloud_builder

val azurerm_spring_cloud_builder :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  build_pack_group:build_pack_group list ->
  stack:stack list ->
  unit ->
  azurerm_spring_cloud_builder

val yojson_of_azurerm_spring_cloud_builder :
  azurerm_spring_cloud_builder -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  build_pack_group:build_pack_group list ->
  stack:stack list ->
  string ->
  t
