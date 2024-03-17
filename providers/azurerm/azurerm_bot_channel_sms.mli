(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_sms__timeouts
type azurerm_bot_channel_sms

type t = private {
  bot_name : string prop;
  id : string prop;
  location : string prop;
  phone_number : string prop;
  resource_group_name : string prop;
  sms_channel_account_security_id : string prop;
  sms_channel_auth_token : string prop;
}

val azurerm_bot_channel_sms :
  ?id:string prop ->
  ?timeouts:azurerm_bot_channel_sms__timeouts ->
  bot_name:string prop ->
  location:string prop ->
  phone_number:string prop ->
  resource_group_name:string prop ->
  sms_channel_account_security_id:string prop ->
  sms_channel_auth_token:string prop ->
  string ->
  t
