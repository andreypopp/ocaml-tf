(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_api_portal__sso
type azurerm_spring_cloud_api_portal__timeouts
type azurerm_spring_cloud_api_portal

val azurerm_spring_cloud_api_portal :
  ?api_try_out_enabled:bool ->
  ?gateway_ids:string list ->
  ?https_only_enabled:bool ->
  ?id:string ->
  ?instance_count:float ->
  ?public_network_access_enabled:bool ->
  ?timeouts:azurerm_spring_cloud_api_portal__timeouts ->
  name:string ->
  spring_cloud_service_id:string ->
  sso:azurerm_spring_cloud_api_portal__sso list ->
  string ->
  unit
