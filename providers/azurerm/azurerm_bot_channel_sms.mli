(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_bot_channel_sms

val azurerm_bot_channel_sms :
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  location:string prop ->
  phone_number:string prop ->
  resource_group_name:string prop ->
  sms_channel_account_security_id:string prop ->
  sms_channel_auth_token:string prop ->
  unit ->
  azurerm_bot_channel_sms

val yojson_of_azurerm_bot_channel_sms :
  azurerm_bot_channel_sms -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bot_name : string prop;
  id : string prop;
  location : string prop;
  phone_number : string prop;
  resource_group_name : string prop;
  sms_channel_account_security_id : string prop;
  sms_channel_auth_token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  location:string prop ->
  phone_number:string prop ->
  resource_group_name:string prop ->
  sms_channel_account_security_id:string prop ->
  sms_channel_auth_token:string prop ->
  string ->
  t
