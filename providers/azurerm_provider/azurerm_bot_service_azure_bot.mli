(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_service_azure_bot__timeouts
type azurerm_bot_service_azure_bot

val azurerm_bot_service_azure_bot :
  ?developer_app_insights_api_key:string ->
  ?developer_app_insights_application_id:string ->
  ?developer_app_insights_key:string ->
  ?endpoint:string ->
  ?icon_url:string ->
  ?local_authentication_enabled:bool ->
  ?luis_app_ids:string list ->
  ?luis_key:string ->
  ?microsoft_app_msi_id:string ->
  ?microsoft_app_tenant_id:string ->
  ?microsoft_app_type:string ->
  ?public_network_access_enabled:bool ->
  ?streaming_endpoint_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_bot_service_azure_bot__timeouts ->
  location:string ->
  microsoft_app_id:string ->
  name:string ->
  resource_group_name:string ->
  sku:string ->
  string ->
  unit
