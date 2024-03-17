(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_custom_domain__timeouts
type azurerm_spring_cloud_custom_domain

val azurerm_spring_cloud_custom_domain :
  ?certificate_name:string ->
  ?thumbprint:string ->
  ?timeouts:azurerm_spring_cloud_custom_domain__timeouts ->
  name:string ->
  spring_cloud_app_id:string ->
  string ->
  unit
