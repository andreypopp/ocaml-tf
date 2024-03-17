(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_facebook__page
type azurerm_bot_channel_facebook__timeouts
type azurerm_bot_channel_facebook

val azurerm_bot_channel_facebook :
  ?id:string ->
  ?timeouts:azurerm_bot_channel_facebook__timeouts ->
  bot_name:string ->
  facebook_application_id:string ->
  facebook_application_secret:string ->
  location:string ->
  resource_group_name:string ->
  page:azurerm_bot_channel_facebook__page list ->
  string ->
  unit
