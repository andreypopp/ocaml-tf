(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_builder__build_pack_group
type azurerm_spring_cloud_builder__stack
type azurerm_spring_cloud_builder__timeouts
type azurerm_spring_cloud_builder

type t = private {
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
}

val azurerm_spring_cloud_builder :
  ?id:string prop ->
  ?timeouts:azurerm_spring_cloud_builder__timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  build_pack_group:
    azurerm_spring_cloud_builder__build_pack_group list ->
  stack:azurerm_spring_cloud_builder__stack list ->
  string ->
  t
