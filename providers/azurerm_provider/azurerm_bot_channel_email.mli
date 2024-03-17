(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_email__timeouts
type azurerm_bot_channel_email

val azurerm_bot_channel_email :
  ?email_password:string prop ->
  ?id:string prop ->
  ?magic_code:string prop ->
  ?timeouts:azurerm_bot_channel_email__timeouts ->
  bot_name:string prop ->
  email_address:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
