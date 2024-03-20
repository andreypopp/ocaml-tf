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

type azurerm_bot_channels_registration

val azurerm_bot_channels_registration :
  ?cmk_key_vault_url:string prop ->
  ?description:string prop ->
  ?developer_app_insights_api_key:string prop ->
  ?developer_app_insights_application_id:string prop ->
  ?developer_app_insights_key:string prop ->
  ?display_name:string prop ->
  ?endpoint:string prop ->
  ?icon_url:string prop ->
  ?id:string prop ->
  ?isolated_network_enabled:bool prop ->
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
  azurerm_bot_channels_registration

val yojson_of_azurerm_bot_channels_registration :
  azurerm_bot_channels_registration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cmk_key_vault_url : string prop;
  description : string prop;
  developer_app_insights_api_key : string prop;
  developer_app_insights_application_id : string prop;
  developer_app_insights_key : string prop;
  display_name : string prop;
  endpoint : string prop;
  icon_url : string prop;
  id : string prop;
  isolated_network_enabled : bool prop;
  location : string prop;
  microsoft_app_id : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  streaming_endpoint_enabled : bool prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?cmk_key_vault_url:string prop ->
  ?description:string prop ->
  ?developer_app_insights_api_key:string prop ->
  ?developer_app_insights_application_id:string prop ->
  ?developer_app_insights_key:string prop ->
  ?display_name:string prop ->
  ?endpoint:string prop ->
  ?icon_url:string prop ->
  ?id:string prop ->
  ?isolated_network_enabled:bool prop ->
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
  ?cmk_key_vault_url:string prop ->
  ?description:string prop ->
  ?developer_app_insights_api_key:string prop ->
  ?developer_app_insights_application_id:string prop ->
  ?developer_app_insights_key:string prop ->
  ?display_name:string prop ->
  ?endpoint:string prop ->
  ?icon_url:string prop ->
  ?id:string prop ->
  ?isolated_network_enabled:bool prop ->
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
