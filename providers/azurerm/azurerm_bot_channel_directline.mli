(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type site

val site :
  ?enabled:bool prop ->
  ?endpoint_parameters_enabled:bool prop ->
  ?enhanced_authentication_enabled:bool prop ->
  ?storage_enabled:bool prop ->
  ?trusted_origins:string prop list ->
  ?user_upload_enabled:bool prop ->
  ?v1_allowed:bool prop ->
  ?v3_allowed:bool prop ->
  name:string prop ->
  unit ->
  site

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_bot_channel_directline

val azurerm_bot_channel_directline :
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  site:site list ->
  unit ->
  azurerm_bot_channel_directline

val yojson_of_azurerm_bot_channel_directline :
  azurerm_bot_channel_directline -> json

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
  site:site list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  site:site list ->
  string ->
  t Tf_core.resource
