(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_directline__site
type azurerm_bot_channel_directline__timeouts
type azurerm_bot_channel_directline

val azurerm_bot_channel_directline :
  ?id:string prop ->
  ?timeouts:azurerm_bot_channel_directline__timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  site:azurerm_bot_channel_directline__site list ->
  string ->
  unit
