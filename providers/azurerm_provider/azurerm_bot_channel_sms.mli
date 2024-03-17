(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_sms__timeouts
type azurerm_bot_channel_sms

val azurerm_bot_channel_sms :
  ?id:string ->
  ?timeouts:azurerm_bot_channel_sms__timeouts ->
  bot_name:string ->
  location:string ->
  phone_number:string ->
  resource_group_name:string ->
  sms_channel_account_security_id:string ->
  sms_channel_auth_token:string ->
  string ->
  unit
