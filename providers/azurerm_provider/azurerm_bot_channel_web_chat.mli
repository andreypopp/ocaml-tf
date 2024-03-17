(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_web_chat__site
type azurerm_bot_channel_web_chat__timeouts
type azurerm_bot_channel_web_chat

val azurerm_bot_channel_web_chat :
  ?id:string prop ->
  ?site_names:string prop list ->
  ?timeouts:azurerm_bot_channel_web_chat__timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  site:azurerm_bot_channel_web_chat__site list ->
  string ->
  unit
