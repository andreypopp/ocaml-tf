(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_api_portal__sso
type azurerm_spring_cloud_api_portal__timeouts
type azurerm_spring_cloud_api_portal

val azurerm_spring_cloud_api_portal :
  ?api_try_out_enabled:bool prop ->
  ?gateway_ids:string prop list ->
  ?https_only_enabled:bool prop ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?public_network_access_enabled:bool prop ->
  ?timeouts:azurerm_spring_cloud_api_portal__timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  sso:azurerm_spring_cloud_api_portal__sso list ->
  string ->
  unit
