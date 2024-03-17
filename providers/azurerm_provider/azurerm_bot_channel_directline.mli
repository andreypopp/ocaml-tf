(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_directline__site
type azurerm_bot_channel_directline__timeouts
type azurerm_bot_channel_directline

val azurerm_bot_channel_directline :
  ?timeouts:azurerm_bot_channel_directline__timeouts ->
  bot_name:string ->
  location:string ->
  resource_group_name:string ->
  site:azurerm_bot_channel_directline__site list ->
  string ->
  unit
