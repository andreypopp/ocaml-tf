(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type content_key

val content_key :
  ?content_key_id:string prop ->
  ?label_reference_in_streaming_policy:string prop ->
  ?policy_name:string prop ->
  ?type_:string prop ->
  ?value:string prop ->
  unit ->
  content_key

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_media_streaming_locator

val azurerm_media_streaming_locator :
  ?alternative_media_id:string prop ->
  ?default_content_key_policy_name:string prop ->
  ?end_time:string prop ->
  ?filter_names:string prop list ->
  ?id:string prop ->
  ?start_time:string prop ->
  ?streaming_locator_id:string prop ->
  ?content_key:content_key list ->
  ?timeouts:timeouts ->
  asset_name:string prop ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  streaming_policy_name:string prop ->
  unit ->
  azurerm_media_streaming_locator

val yojson_of_azurerm_media_streaming_locator :
  azurerm_media_streaming_locator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alternative_media_id : string prop;
  asset_name : string prop;
  default_content_key_policy_name : string prop;
  end_time : string prop;
  filter_names : string list prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  start_time : string prop;
  streaming_locator_id : string prop;
  streaming_policy_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?alternative_media_id:string prop ->
  ?default_content_key_policy_name:string prop ->
  ?end_time:string prop ->
  ?filter_names:string prop list ->
  ?id:string prop ->
  ?start_time:string prop ->
  ?streaming_locator_id:string prop ->
  ?content_key:content_key list ->
  ?timeouts:timeouts ->
  asset_name:string prop ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  streaming_policy_name:string prop ->
  string ->
  t

val make :
  ?alternative_media_id:string prop ->
  ?default_content_key_policy_name:string prop ->
  ?end_time:string prop ->
  ?filter_names:string prop list ->
  ?id:string prop ->
  ?start_time:string prop ->
  ?streaming_locator_id:string prop ->
  ?content_key:content_key list ->
  ?timeouts:timeouts ->
  asset_name:string prop ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  streaming_policy_name:string prop ->
  string ->
  t Tf_core.resource
