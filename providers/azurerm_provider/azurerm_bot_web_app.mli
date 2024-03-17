(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_web_app__timeouts
type azurerm_bot_web_app

val azurerm_bot_web_app :
  ?endpoint:string ->
  ?luis_app_ids:string list ->
  ?luis_key:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_bot_web_app__timeouts ->
  location:string ->
  microsoft_app_id:string ->
  name:string ->
  resource_group_name:string ->
  sku:string ->
  string ->
  unit
