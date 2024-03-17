(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_accelerator__timeouts
type azurerm_spring_cloud_accelerator

type t = private {
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
}

val azurerm_spring_cloud_accelerator :
  ?id:string prop ->
  ?timeouts:azurerm_spring_cloud_accelerator__timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t
