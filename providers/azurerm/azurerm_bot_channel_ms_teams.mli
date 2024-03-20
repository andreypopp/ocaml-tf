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

type azurerm_bot_channel_ms_teams

val azurerm_bot_channel_ms_teams :
  ?calling_web_hook:string prop ->
  ?deployment_environment:string prop ->
  ?enable_calling:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_bot_channel_ms_teams

val yojson_of_azurerm_bot_channel_ms_teams :
  azurerm_bot_channel_ms_teams -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bot_name : string prop;
  calling_web_hook : string prop;
  deployment_environment : string prop;
  enable_calling : bool prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?calling_web_hook:string prop ->
  ?deployment_environment:string prop ->
  ?enable_calling:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?calling_web_hook:string prop ->
  ?deployment_environment:string prop ->
  ?enable_calling:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
