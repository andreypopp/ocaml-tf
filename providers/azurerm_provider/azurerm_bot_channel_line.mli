(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_line__line_channel
type azurerm_bot_channel_line__timeouts
type azurerm_bot_channel_line

val azurerm_bot_channel_line :
  ?timeouts:azurerm_bot_channel_line__timeouts ->
  bot_name:string ->
  location:string ->
  resource_group_name:string ->
  line_channel:azurerm_bot_channel_line__line_channel list ->
  string ->
  unit
