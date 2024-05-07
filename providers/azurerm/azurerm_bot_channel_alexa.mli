(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_bot_channel_alexa

val azurerm_bot_channel_alexa :
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  skill_id:string prop ->
  unit ->
  azurerm_bot_channel_alexa

val yojson_of_azurerm_bot_channel_alexa :
  azurerm_bot_channel_alexa -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bot_name : string prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
  skill_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  skill_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  skill_id:string prop ->
  string ->
  t Tf_core.resource
