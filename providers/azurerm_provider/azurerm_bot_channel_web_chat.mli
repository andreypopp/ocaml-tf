(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_web_chat__site
type azurerm_bot_channel_web_chat__timeouts
type azurerm_bot_channel_web_chat

val azurerm_bot_channel_web_chat :
  ?id:string ->
  ?site_names:string list ->
  ?timeouts:azurerm_bot_channel_web_chat__timeouts ->
  bot_name:string ->
  location:string ->
  resource_group_name:string ->
  site:azurerm_bot_channel_web_chat__site list ->
  string ->
  unit
