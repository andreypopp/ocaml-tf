(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_slack__timeouts
type azurerm_bot_channel_slack

val azurerm_bot_channel_slack :
  ?landing_page_url:string ->
  ?signing_secret:string ->
  ?timeouts:azurerm_bot_channel_slack__timeouts ->
  bot_name:string ->
  client_id:string ->
  client_secret:string ->
  location:string ->
  resource_group_name:string ->
  verification_token:string ->
  string ->
  unit
