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

type azurerm_bot_channel_email

val azurerm_bot_channel_email :
  ?email_password:string prop ->
  ?id:string prop ->
  ?magic_code:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  email_address:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_bot_channel_email

val yojson_of_azurerm_bot_channel_email :
  azurerm_bot_channel_email -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bot_name : string prop;
  email_address : string prop;
  email_password : string prop;
  id : string prop;
  location : string prop;
  magic_code : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?email_password:string prop ->
  ?id:string prop ->
  ?magic_code:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  email_address:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?email_password:string prop ->
  ?id:string prop ->
  ?magic_code:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  email_address:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
