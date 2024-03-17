(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_active_deployment__timeouts
type azurerm_spring_cloud_active_deployment

type t = private {
  deployment_name : string prop;
  id : string prop;
  spring_cloud_app_id : string prop;
}

val azurerm_spring_cloud_active_deployment :
  ?id:string prop ->
  ?timeouts:azurerm_spring_cloud_active_deployment__timeouts ->
  deployment_name:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  t
