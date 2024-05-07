(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type page

val page : access_token:string prop -> id:string prop -> unit -> page

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_bot_channel_facebook

val azurerm_bot_channel_facebook :
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  facebook_application_id:string prop ->
  facebook_application_secret:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  page:page list ->
  unit ->
  azurerm_bot_channel_facebook

val yojson_of_azurerm_bot_channel_facebook :
  azurerm_bot_channel_facebook -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bot_name : string prop;
  facebook_application_id : string prop;
  facebook_application_secret : string prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  facebook_application_id:string prop ->
  facebook_application_secret:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  page:page list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  facebook_application_id:string prop ->
  facebook_application_secret:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  page:page list ->
  string ->
  t Tf_core.resource
