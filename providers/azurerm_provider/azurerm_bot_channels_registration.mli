(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channels_registration__timeouts
type azurerm_bot_channels_registration

val azurerm_bot_channels_registration :
  ?cmk_key_vault_url:string ->
  ?description:string ->
  ?developer_app_insights_api_key:string ->
  ?developer_app_insights_application_id:string ->
  ?developer_app_insights_key:string ->
  ?display_name:string ->
  ?endpoint:string ->
  ?icon_url:string ->
  ?id:string ->
  ?isolated_network_enabled:bool ->
  ?public_network_access_enabled:bool ->
  ?streaming_endpoint_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_bot_channels_registration__timeouts ->
  location:string ->
  microsoft_app_id:string ->
  name:string ->
  resource_group_name:string ->
  sku:string ->
  string ->
  unit
