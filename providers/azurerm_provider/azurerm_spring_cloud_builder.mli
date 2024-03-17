(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_builder__build_pack_group
type azurerm_spring_cloud_builder__stack
type azurerm_spring_cloud_builder__timeouts
type azurerm_spring_cloud_builder

val azurerm_spring_cloud_builder :
  ?timeouts:azurerm_spring_cloud_builder__timeouts ->
  name:string ->
  spring_cloud_service_id:string ->
  build_pack_group:
    azurerm_spring_cloud_builder__build_pack_group list ->
  stack:azurerm_spring_cloud_builder__stack list ->
  string ->
  unit
