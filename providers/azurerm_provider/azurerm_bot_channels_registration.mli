(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channels_registration__timeouts
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
  ?timeouts:azurerm_bot_channels_registration__timeouts ->
  location:string prop ->
  microsoft_app_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  unit
