(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_direct_line_speech__timeouts
type azurerm_bot_channel_direct_line_speech

val azurerm_bot_channel_direct_line_speech :
  ?cognitive_account_id:string ->
  ?custom_speech_model_id:string ->
  ?custom_voice_deployment_id:string ->
  ?id:string ->
  ?timeouts:azurerm_bot_channel_direct_line_speech__timeouts ->
  bot_name:string ->
  cognitive_service_access_key:string ->
  cognitive_service_location:string ->
  location:string ->
  resource_group_name:string ->
  string ->
  unit
