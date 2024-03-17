(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_build_pack_binding__launch
type azurerm_spring_cloud_build_pack_binding__timeouts
type azurerm_spring_cloud_build_pack_binding

type t = private {
  binding_type : string prop;
  id : string prop;
  name : string prop;
  spring_cloud_builder_id : string prop;
}

val azurerm_spring_cloud_build_pack_binding :
  ?binding_type:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_spring_cloud_build_pack_binding__timeouts ->
  name:string prop ->
  spring_cloud_builder_id:string prop ->
  launch:azurerm_spring_cloud_build_pack_binding__launch list ->
  string ->
  t
