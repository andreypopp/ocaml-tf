(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_ms_teams__timeouts
type azurerm_bot_channel_ms_teams

val azurerm_bot_channel_ms_teams :
  ?calling_web_hook:string ->
  ?deployment_environment:string ->
  ?enable_calling:bool ->
  ?id:string ->
  ?timeouts:azurerm_bot_channel_ms_teams__timeouts ->
  bot_name:string ->
  location:string ->
  resource_group_name:string ->
  string ->
  unit
