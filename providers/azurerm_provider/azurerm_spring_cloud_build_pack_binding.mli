(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_build_pack_binding__launch
type azurerm_spring_cloud_build_pack_binding__timeouts
type azurerm_spring_cloud_build_pack_binding

val azurerm_spring_cloud_build_pack_binding :
  ?binding_type:string ->
  ?timeouts:azurerm_spring_cloud_build_pack_binding__timeouts ->
  name:string ->
  spring_cloud_builder_id:string ->
  launch:azurerm_spring_cloud_build_pack_binding__launch list ->
  string ->
  unit
