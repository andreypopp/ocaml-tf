(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_channel_ms_teams__timeouts
type azurerm_bot_channel_ms_teams

type t = private {
  bot_name : string prop;
  calling_web_hook : string prop;
  deployment_environment : string prop;
  enable_calling : bool prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
}

val azurerm_bot_channel_ms_teams :
  ?calling_web_hook:string prop ->
  ?deployment_environment:string prop ->
  ?enable_calling:bool prop ->
  ?id:string prop ->
  ?timeouts:azurerm_bot_channel_ms_teams__timeouts ->
  bot_name:string prop ->
  location:string prop ->
  resource_group_name:string prop ->
  string ->
  t
