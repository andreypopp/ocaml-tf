(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_facebook__page
type azurerm_bot_channel_facebook__timeouts
type azurerm_bot_channel_facebook

type t = private {
  bot_name : string prop;
  facebook_application_id : string prop;
  facebook_application_secret : string prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
}

val azurerm_bot_channel_facebook :
  ?id:string prop ->
  ?timeouts:azurerm_bot_channel_facebook__timeouts ->
  bot_name:string prop ->
  facebook_application_id:string prop ->
  facebook_application_secret:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  page:azurerm_bot_channel_facebook__page list ->
  string ->
  t
