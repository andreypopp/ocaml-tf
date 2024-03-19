(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type line_channel

val line_channel :
  access_token:string prop ->
  secret:string prop ->
  unit ->
  line_channel

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_bot_channel_line

val azurerm_bot_channel_line :
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  line_channel:line_channel list ->
  unit ->
  azurerm_bot_channel_line

val yojson_of_azurerm_bot_channel_line :
  azurerm_bot_channel_line -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bot_name : string prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  line_channel:line_channel list ->
  string ->
  t
