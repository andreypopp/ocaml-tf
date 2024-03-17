(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_line__line_channel
type azurerm_bot_channel_line__timeouts
type azurerm_bot_channel_line

type t = private {
  bot_name : string prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
}

val azurerm_bot_channel_line :
  ?id:string prop ->
  ?timeouts:azurerm_bot_channel_line__timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  line_channel:azurerm_bot_channel_line__line_channel list ->
  string ->
  t
