(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_bot_service_azure_bot

val azurerm_bot_service_azure_bot :
  ?developer_app_insights_api_key:string prop ->
  ?developer_app_insights_application_id:string prop ->
  ?developer_app_insights_key:string prop ->
  ?display_name:string prop ->
  ?endpoint:string prop ->
  ?icon_url:string prop ->
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?luis_app_ids:string prop list ->
  ?luis_key:string prop ->
  ?microsoft_app_msi_id:string prop ->
  ?microsoft_app_tenant_id:string prop ->
  ?microsoft_app_type:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?streaming_endpoint_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  microsoft_app_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  unit ->
  azurerm_bot_service_azure_bot

val yojson_of_azurerm_bot_service_azure_bot :
  azurerm_bot_service_azure_bot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  developer_app_insights_api_key : string prop;
  developer_app_insights_application_id : string prop;
  developer_app_insights_key : string prop;
  display_name : string prop;
  endpoint : string prop;
  icon_url : string prop;
  id : string prop;
  local_authentication_enabled : bool prop;
  location : string prop;
  luis_app_ids : string list prop;
  luis_key : string prop;
  microsoft_app_id : string prop;
  microsoft_app_msi_id : string prop;
  microsoft_app_tenant_id : string prop;
  microsoft_app_type : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  streaming_endpoint_enabled : bool prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?developer_app_insights_api_key:string prop ->
  ?developer_app_insights_application_id:string prop ->
  ?developer_app_insights_key:string prop ->
  ?display_name:string prop ->
  ?endpoint:string prop ->
  ?icon_url:string prop ->
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?luis_app_ids:string prop list ->
  ?luis_key:string prop ->
  ?microsoft_app_msi_id:string prop ->
  ?microsoft_app_tenant_id:string prop ->
  ?microsoft_app_type:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?streaming_endpoint_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  microsoft_app_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t

val make :
  ?developer_app_insights_api_key:string prop ->
  ?developer_app_insights_application_id:string prop ->
  ?developer_app_insights_key:string prop ->
  ?display_name:string prop ->
  ?endpoint:string prop ->
  ?icon_url:string prop ->
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?luis_app_ids:string prop list ->
  ?luis_key:string prop ->
  ?microsoft_app_msi_id:string prop ->
  ?microsoft_app_tenant_id:string prop ->
  ?microsoft_app_type:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?streaming_endpoint_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  microsoft_app_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t Tf_core.resource
