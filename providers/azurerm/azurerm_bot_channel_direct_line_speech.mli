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

type azurerm_bot_channel_direct_line_speech

val azurerm_bot_channel_direct_line_speech :
  ?cognitive_account_id:string prop ->
  ?custom_speech_model_id:string prop ->
  ?custom_voice_deployment_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  cognitive_service_access_key:string prop ->
  cognitive_service_location:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_bot_channel_direct_line_speech

val yojson_of_azurerm_bot_channel_direct_line_speech :
  azurerm_bot_channel_direct_line_speech -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bot_name : string prop;
  cognitive_account_id : string prop;
  cognitive_service_access_key : string prop;
  cognitive_service_location : string prop;
  custom_speech_model_id : string prop;
  custom_voice_deployment_id : string prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cognitive_account_id:string prop ->
  ?custom_speech_model_id:string prop ->
  ?custom_voice_deployment_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  cognitive_service_access_key:string prop ->
  cognitive_service_location:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?cognitive_account_id:string prop ->
  ?custom_speech_model_id:string prop ->
  ?custom_voice_deployment_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  cognitive_service_access_key:string prop ->
  cognitive_service_location:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
