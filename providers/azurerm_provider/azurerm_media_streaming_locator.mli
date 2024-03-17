(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_media_streaming_locator__content_key
type azurerm_media_streaming_locator__timeouts
type azurerm_media_streaming_locator

val azurerm_media_streaming_locator :
  ?alternative_media_id:string prop ->
  ?default_content_key_policy_name:string prop ->
  ?end_time:string prop ->
  ?filter_names:string prop list ->
  ?id:string prop ->
  ?start_time:string prop ->
  ?streaming_locator_id:string prop ->
  ?timeouts:azurerm_media_streaming_locator__timeouts ->
  asset_name:string prop ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  streaming_policy_name:string prop ->
  content_key:azurerm_media_streaming_locator__content_key list ->
  string ->
  unit
