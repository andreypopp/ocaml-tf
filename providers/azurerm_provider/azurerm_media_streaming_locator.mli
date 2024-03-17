(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_media_streaming_locator__content_key
type azurerm_media_streaming_locator__timeouts
type azurerm_media_streaming_locator

val azurerm_media_streaming_locator :
  ?alternative_media_id:string ->
  ?default_content_key_policy_name:string ->
  ?filter_names:string list ->
  ?start_time:string ->
  ?timeouts:azurerm_media_streaming_locator__timeouts ->
  asset_name:string ->
  media_services_account_name:string ->
  name:string ->
  resource_group_name:string ->
  streaming_policy_name:string ->
  content_key:azurerm_media_streaming_locator__content_key list ->
  string ->
  unit
