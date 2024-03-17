(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_alexa__timeouts
type azurerm_bot_channel_alexa

type t = private {
  bot_name : string prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
  skill_id : string prop;
}

val azurerm_bot_channel_alexa :
  ?id:string prop ->
  ?timeouts:azurerm_bot_channel_alexa__timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  skill_id:string prop ->
  string ->
  t
