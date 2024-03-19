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

type azurerm_bot_channel_slack

val azurerm_bot_channel_slack :
  ?id:string prop ->
  ?landing_page_url:string prop ->
  ?signing_secret:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  verification_token:string prop ->
  unit ->
  azurerm_bot_channel_slack

val yojson_of_azurerm_bot_channel_slack :
  azurerm_bot_channel_slack -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?landing_page_url:string prop ->
  ?signing_secret:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  verification_token:string prop ->
  string ->
  t
