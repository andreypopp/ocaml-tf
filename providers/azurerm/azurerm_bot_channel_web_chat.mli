(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type site

val site :
  ?endpoint_parameters_enabled:bool prop ->
  ?storage_enabled:bool prop ->
  ?user_upload_enabled:bool prop ->
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

type azurerm_bot_channel_web_chat

val azurerm_bot_channel_web_chat :
  ?id:string prop ->
  ?site_names:string prop list ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  site:site list ->
  unit ->
  azurerm_bot_channel_web_chat

val yojson_of_azurerm_bot_channel_web_chat :
  azurerm_bot_channel_web_chat -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bot_name : string prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
  site_names : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?site_names:string prop list ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  site:site list ->
  string ->
  t
