(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_slack__timeouts
type azurerm_bot_channel_slack

type t = private {
  bot_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  landing_page_url : string prop;
  location : string prop;
  resource_group_name : string prop;
  signing_secret : string prop;
  verification_token : string prop;
}

val azurerm_bot_channel_slack :
  ?id:string prop ->
  ?landing_page_url:string prop ->
  ?signing_secret:string prop ->
  ?timeouts:azurerm_bot_channel_slack__timeouts ->
  bot_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  verification_token:string prop ->
  string ->
  t
