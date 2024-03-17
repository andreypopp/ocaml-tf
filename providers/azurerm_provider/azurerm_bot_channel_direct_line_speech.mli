(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_direct_line_speech__timeouts
type azurerm_bot_channel_direct_line_speech

val azurerm_bot_channel_direct_line_speech :
  ?cognitive_account_id:string prop ->
  ?custom_speech_model_id:string prop ->
  ?custom_voice_deployment_id:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_bot_channel_direct_line_speech__timeouts ->
  bot_name:string prop ->
  cognitive_service_access_key:string prop ->
  cognitive_service_location:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
