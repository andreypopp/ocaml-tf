(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_email__timeouts
type azurerm_bot_channel_email

val azurerm_bot_channel_email :
  ?email_password:string ->
  ?magic_code:string ->
  ?timeouts:azurerm_bot_channel_email__timeouts ->
  bot_name:string ->
  email_address:string ->
  location:string ->
  resource_group_name:string ->
  string ->
  unit
