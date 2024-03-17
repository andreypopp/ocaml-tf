(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_active_deployment__timeouts
type azurerm_spring_cloud_active_deployment

val azurerm_spring_cloud_active_deployment :
  ?id:string prop ->
  ?timeouts:azurerm_spring_cloud_active_deployment__timeouts ->
  deployment_name:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  unit
